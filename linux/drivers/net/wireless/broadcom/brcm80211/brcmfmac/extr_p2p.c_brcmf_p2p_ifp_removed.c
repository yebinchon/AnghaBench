
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int wdev; } ;
struct TYPE_4__ {TYPE_1__* bss_idx; } ;
struct brcmf_cfg80211_info {TYPE_2__ p2p; } ;
struct TYPE_3__ {int * vif; } ;


 int INFO ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_free_vif (struct brcmf_cfg80211_vif*) ;
 int cfg80211_unregister_wdev (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct brcmf_cfg80211_info* wdev_to_cfg (int *) ;

void brcmf_p2p_ifp_removed(struct brcmf_if *ifp, bool rtnl_locked)
{
 struct brcmf_cfg80211_info *cfg;
 struct brcmf_cfg80211_vif *vif;

 brcmf_dbg(INFO, "P2P: device interface removed\n");
 vif = ifp->vif;
 cfg = wdev_to_cfg(&vif->wdev);
 cfg->p2p.bss_idx[P2PAPI_BSSCFG_DEVICE].vif = ((void*)0);
 if (!rtnl_locked)
  rtnl_lock();
 cfg80211_unregister_wdev(&vif->wdev);
 if (!rtnl_locked)
  rtnl_unlock();
 brcmf_free_vif(vif);
}
