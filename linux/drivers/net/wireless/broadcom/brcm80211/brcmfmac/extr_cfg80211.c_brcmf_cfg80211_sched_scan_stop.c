
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {scalar_t__ int_escan_map; } ;


 int SCAN ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_notify_escan_complete (struct brcmf_cfg80211_info*,struct brcmf_if*,int,int) ;
 int brcmf_pno_stop_sched_scan (struct brcmf_if*,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static int brcmf_cfg80211_sched_scan_stop(struct wiphy *wiphy,
       struct net_device *ndev, u64 reqid)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(ndev);

 brcmf_dbg(SCAN, "enter\n");
 brcmf_pno_stop_sched_scan(ifp, reqid);
 if (cfg->int_escan_map)
  brcmf_notify_escan_complete(cfg, ifp, 1, 1);
 return 0;
}
