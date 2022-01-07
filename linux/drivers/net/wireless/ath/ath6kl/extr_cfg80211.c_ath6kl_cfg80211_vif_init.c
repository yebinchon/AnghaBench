
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int mc_filter; int if_lock; int flags; int sched_scan_timer; int disconnect_timer; int aggr_cntxt; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int WMM_ENABLED ;
 int aggr_init (struct ath6kl_vif*) ;
 int ath6kl_err (char*) ;
 int ath6kl_wmi_sscan_timer ;
 int disconnect_timer_handler ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ath6kl_cfg80211_vif_init(struct ath6kl_vif *vif)
{
 vif->aggr_cntxt = aggr_init(vif);
 if (!vif->aggr_cntxt) {
  ath6kl_err("failed to initialize aggr\n");
  return -ENOMEM;
 }

 timer_setup(&vif->disconnect_timer, disconnect_timer_handler, 0);
 timer_setup(&vif->sched_scan_timer, ath6kl_wmi_sscan_timer, 0);

 set_bit(WMM_ENABLED, &vif->flags);
 spin_lock_init(&vif->if_lock);

 INIT_LIST_HEAD(&vif->mc_filter);

 return 0;
}
