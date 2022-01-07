
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_pno_bssid_le {scalar_t__ flags; int bssid; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int bssid_cfg ;


 int ETH_ALEN ;
 int SCAN ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,int const*) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_pno_bssid_le*,int) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static int brcmf_pno_add_bssid(struct brcmf_if *ifp, const u8 *bssid)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_pno_bssid_le bssid_cfg;
 int err;

 memcpy(bssid_cfg.bssid, bssid, ETH_ALEN);
 bssid_cfg.flags = 0;

 brcmf_dbg(SCAN, "adding bssid=%pM\n", bssid);
 err = brcmf_fil_iovar_data_set(ifp, "pfn_add_bssid", &bssid_cfg,
           sizeof(bssid_cfg));
 if (err < 0)
  bphy_err(drvr, "adding failed: err=%d\n", err);
 return err;
}
