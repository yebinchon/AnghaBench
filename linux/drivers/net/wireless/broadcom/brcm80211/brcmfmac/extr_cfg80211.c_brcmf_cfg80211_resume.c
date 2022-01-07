
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int ndev; } ;
struct TYPE_2__ {int active; int nd_enabled; int pre_pmmode; } ;
struct brcmf_cfg80211_info {TYPE_1__ wowl; int pub; int wiphy; } ;
typedef int s32 ;


 int BRCMF_C_SET_PM ;
 int BRCMF_E_PFN_NET_FOUND ;
 int BRCMF_FEAT_WOWL_ARP_ND ;
 int TRACE ;
 int brcmf_cfg80211_sched_scan_stop (int ,int ,int ) ;
 int brcmf_config_wowl_pattern (struct brcmf_if*,char*,int *,int ,int *,int ) ;
 int brcmf_configure_arp_nd_offload (struct brcmf_if*,int) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_feat_is_enabled (struct brcmf_if*,int ) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int ) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int ) ;
 int brcmf_fweh_register (int ,int ,int ) ;
 int brcmf_fweh_unregister (int ,int ) ;
 int brcmf_notify_sched_scan_results ;
 int brcmf_report_wowl_wakeind (struct wiphy*,struct brcmf_if*) ;
 struct net_device* cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static s32 brcmf_cfg80211_resume(struct wiphy *wiphy)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct net_device *ndev = cfg_to_ndev(cfg);
 struct brcmf_if *ifp = netdev_priv(ndev);

 brcmf_dbg(TRACE, "Enter\n");

 if (cfg->wowl.active) {
  brcmf_report_wowl_wakeind(wiphy, ifp);
  brcmf_fil_iovar_int_set(ifp, "wowl_clear", 0);
  brcmf_config_wowl_pattern(ifp, "clr", ((void*)0), 0, ((void*)0), 0);
  if (!brcmf_feat_is_enabled(ifp, BRCMF_FEAT_WOWL_ARP_ND))
   brcmf_configure_arp_nd_offload(ifp, 1);
  brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_PM,
          cfg->wowl.pre_pmmode);
  cfg->wowl.active = 0;
  if (cfg->wowl.nd_enabled) {
   brcmf_cfg80211_sched_scan_stop(cfg->wiphy, ifp->ndev, 0);
   brcmf_fweh_unregister(cfg->pub, BRCMF_E_PFN_NET_FOUND);
   brcmf_fweh_register(cfg->pub, BRCMF_E_PFN_NET_FOUND,
         brcmf_notify_sched_scan_results);
   cfg->wowl.nd_enabled = 0;
  }
 }
 return 0;
}
