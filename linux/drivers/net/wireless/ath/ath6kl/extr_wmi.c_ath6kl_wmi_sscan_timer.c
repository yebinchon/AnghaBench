
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ath6kl_vif {TYPE_1__* ar; } ;
struct TYPE_2__ {int wiphy; } ;


 int cfg80211_sched_scan_results (int ,int ) ;
 struct ath6kl_vif* from_timer (int ,struct timer_list*,int ) ;
 int sched_scan_timer ;
 struct ath6kl_vif* vif ;

void ath6kl_wmi_sscan_timer(struct timer_list *t)
{
 struct ath6kl_vif *vif = from_timer(vif, t, sched_scan_timer);

 cfg80211_sched_scan_results(vif->ar->wiphy, 0);
}
