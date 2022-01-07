
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct brcmu_chan {int chspec; int bw; int chnum; } ;
struct brcmf_p2p_info {TYPE_4__* cfg; TYPE_2__* bss_idx; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_bss_info_le {int chanspec; } ;
typedef int __le32 ;
struct TYPE_7__ {int (* encchspec ) (struct brcmu_chan*) ;} ;
struct TYPE_8__ {TYPE_3__ d11inf; } ;
struct TYPE_6__ {TYPE_1__* vif; } ;
struct TYPE_5__ {struct brcmf_if* ifp; } ;


 int BRCMF_C_GET_BSSID ;
 int BRCMF_C_GET_BSS_INFO ;
 int BRCMF_P2P_TEMP_CHAN ;
 int BRCMU_CHAN_BW_20 ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int WL_BSS_INFO_MAX ;
 scalar_t__ brcmf_fil_cmd_data_get (struct brcmf_if*,int ,int *,int) ;
 int cpu_to_le32 (int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int stub1 (struct brcmu_chan*) ;

__attribute__((used)) static void brcmf_p2p_get_current_chanspec(struct brcmf_p2p_info *p2p,
        u16 *chanspec)
{
 struct brcmf_if *ifp;
 u8 mac_addr[ETH_ALEN];
 struct brcmu_chan ch;
 struct brcmf_bss_info_le *bi;
 u8 *buf;

 ifp = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif->ifp;

 if (brcmf_fil_cmd_data_get(ifp, BRCMF_C_GET_BSSID, mac_addr,
       ETH_ALEN) == 0) {
  buf = kzalloc(WL_BSS_INFO_MAX, GFP_KERNEL);
  if (buf != ((void*)0)) {
   *(__le32 *)buf = cpu_to_le32(WL_BSS_INFO_MAX);
   if (brcmf_fil_cmd_data_get(ifp, BRCMF_C_GET_BSS_INFO,
         buf, WL_BSS_INFO_MAX) == 0) {
    bi = (struct brcmf_bss_info_le *)(buf + 4);
    *chanspec = le16_to_cpu(bi->chanspec);
    kfree(buf);
    return;
   }
   kfree(buf);
  }
 }

 ch.chnum = BRCMF_P2P_TEMP_CHAN;
 ch.bw = BRCMU_CHAN_BW_20;
 p2p->cfg->d11inf.encchspec(&ch);
 *chanspec = ch.chspec;
}
