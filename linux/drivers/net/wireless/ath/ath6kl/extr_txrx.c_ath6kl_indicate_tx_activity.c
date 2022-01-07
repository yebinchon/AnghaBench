
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath6kl {int* ac2ep_map; int* ac_stream_active; scalar_t__* ac_stream_pri_map; scalar_t__ hiac_stream_active_pri; int htc_target; int lock; int flag; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int WMI_ENABLED ;
 int WMM_NUM_AC ;
 int ath6kl_htc_activity_changed (int ,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

void ath6kl_indicate_tx_activity(void *devt, u8 traffic_class, bool active)
{
 struct ath6kl *ar = devt;
 enum htc_endpoint_id eid;
 int i;

 eid = ar->ac2ep_map[traffic_class];

 if (!test_bit(WMI_ENABLED, &ar->flag))
  goto notify_htc;

 spin_lock_bh(&ar->lock);

 ar->ac_stream_active[traffic_class] = active;

 if (active) {




  if (ar->ac_stream_pri_map[traffic_class] >
      ar->hiac_stream_active_pri)

   ar->hiac_stream_active_pri =
     ar->ac_stream_pri_map[traffic_class];

 } else {




  if (ar->hiac_stream_active_pri ==
   ar->ac_stream_pri_map[traffic_class]) {





   ar->hiac_stream_active_pri = 0;

   for (i = 0; i < WMM_NUM_AC; i++) {
    if (ar->ac_stream_active[i] &&
        (ar->ac_stream_pri_map[i] >
         ar->hiac_stream_active_pri))




     ar->hiac_stream_active_pri =
      ar->ac_stream_pri_map[i];
   }
  }
 }

 spin_unlock_bh(&ar->lock);

notify_htc:

 ath6kl_htc_activity_changed(ar->htc_target, eid, active);
}
