
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_p2p_info {TYPE_1__* bss_idx; } ;
struct brcmf_cfg80211_vif {int ifp; } ;
struct TYPE_2__ {struct brcmf_cfg80211_vif* vif; } ;


 size_t P2PAPI_BSSCFG_DEVICE ;
 int brcmf_p2p_cancel_remain_on_channel (int ) ;
 int brcmf_p2p_deinit_discovery (struct brcmf_p2p_info*) ;
 int brcmf_remove_interface (int ,int) ;
 int memset (struct brcmf_p2p_info*,int ,int) ;

void brcmf_p2p_detach(struct brcmf_p2p_info *p2p)
{
 struct brcmf_cfg80211_vif *vif;

 vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
 if (vif != ((void*)0)) {
  brcmf_p2p_cancel_remain_on_channel(vif->ifp);
  brcmf_p2p_deinit_discovery(p2p);
  brcmf_remove_interface(vif->ifp, 0);
 }

 memset(p2p, 0, sizeof(*p2p));
}
