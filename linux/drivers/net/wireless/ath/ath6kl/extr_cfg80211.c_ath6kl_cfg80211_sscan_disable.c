
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {struct ath6kl* ar; } ;
struct ath6kl {int wiphy; } ;


 int __ath6kl_cfg80211_sscan_stop (struct ath6kl_vif*) ;
 int cfg80211_sched_scan_stopped (int ,int ) ;

__attribute__((used)) static void ath6kl_cfg80211_sscan_disable(struct ath6kl_vif *vif)
{
 struct ath6kl *ar = vif->ar;
 bool stopped;

 stopped = __ath6kl_cfg80211_sscan_stop(vif);

 if (!stopped)
  return;

 cfg80211_sched_scan_stopped(ar->wiphy, 0);
}
