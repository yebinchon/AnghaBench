
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_pno_macaddr_le {int flags; int* mac; int version; } ;
struct brcmf_pno_info {int n_reqs; TYPE_1__** reqs; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int pfn_mac ;
struct TYPE_2__ {int flags; int* mac_addr; int* mac_addr_mask; int reqid; } ;


 int BRCMF_PFN_MACADDR_CFG_VER ;
 int BRCMF_PFN_MAC_OUI_ONLY ;
 int BRCMF_PFN_SET_MAC_UNASSOC ;
 int ETH_ALEN ;
 int NL80211_SCAN_FLAG_RANDOM_ADDR ;
 int SCAN ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,int ,int*) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_pno_macaddr_le*,int) ;
 int get_random_int () ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int brcmf_pno_set_random(struct brcmf_if *ifp, struct brcmf_pno_info *pi)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_pno_macaddr_le pfn_mac;
 u8 *mac_addr = ((void*)0);
 u8 *mac_mask = ((void*)0);
 int err, i;

 for (i = 0; i < pi->n_reqs; i++)
  if (pi->reqs[i]->flags & NL80211_SCAN_FLAG_RANDOM_ADDR) {
   mac_addr = pi->reqs[i]->mac_addr;
   mac_mask = pi->reqs[i]->mac_addr_mask;
   break;
  }


 if (!mac_addr)
  return 0;

 pfn_mac.version = BRCMF_PFN_MACADDR_CFG_VER;
 pfn_mac.flags = BRCMF_PFN_MAC_OUI_ONLY | BRCMF_PFN_SET_MAC_UNASSOC;

 memcpy(pfn_mac.mac, mac_addr, ETH_ALEN);
 for (i = 0; i < ETH_ALEN; i++) {
  pfn_mac.mac[i] &= mac_mask[i];
  pfn_mac.mac[i] |= get_random_int() & ~(mac_mask[i]);
 }

 pfn_mac.mac[0] &= 0xFE;

 pfn_mac.mac[0] |= 0x02;

 brcmf_dbg(SCAN, "enabling random mac: reqid=%llu mac=%pM\n",
    pi->reqs[i]->reqid, pfn_mac.mac);
 err = brcmf_fil_iovar_data_set(ifp, "pfn_macaddr", &pfn_mac,
           sizeof(pfn_mac));
 if (err)
  bphy_err(drvr, "pfn_macaddr failed, err=%d\n", err);

 return err;
}
