
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct TYPE_2__ {int max_num_patterns; } ;
struct ath10k {TYPE_1__ wow; } ;


 int WOW_EVENT_MAX ;
 int ath10k_warn (struct ath10k*,char*,int,int ,int) ;
 int ath10k_wmi_wow_add_wakeup_event (struct ath10k*,int ,int,int ) ;
 int ath10k_wmi_wow_del_pattern (struct ath10k*,int ,int) ;
 int wow_wakeup_event (int) ;

__attribute__((used)) static int ath10k_wow_vif_cleanup(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 int i, ret;

 for (i = 0; i < WOW_EVENT_MAX; i++) {
  ret = ath10k_wmi_wow_add_wakeup_event(ar, arvif->vdev_id, i, 0);
  if (ret) {
   ath10k_warn(ar, "failed to issue wow wakeup for event %s on vdev %i: %d\n",
        wow_wakeup_event(i), arvif->vdev_id, ret);
   return ret;
  }
 }

 for (i = 0; i < ar->wow.max_num_patterns; i++) {
  ret = ath10k_wmi_wow_del_pattern(ar, arvif->vdev_id, i);
  if (ret) {
   ath10k_warn(ar, "failed to delete wow pattern %d for vdev %i: %d\n",
        i, arvif->vdev_id, ret);
   return ret;
  }
 }

 return 0;
}
