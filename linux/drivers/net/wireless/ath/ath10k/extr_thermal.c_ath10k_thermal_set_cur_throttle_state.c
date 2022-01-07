
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct ath10k* devdata; } ;
struct TYPE_2__ {unsigned long throttle_state; } ;
struct ath10k {int conf_mutex; TYPE_1__ thermal; } ;


 unsigned long ATH10K_THERMAL_THROTTLE_MAX ;
 int EINVAL ;
 int ath10k_thermal_set_throttling (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
ath10k_thermal_set_cur_throttle_state(struct thermal_cooling_device *cdev,
          unsigned long throttle_state)
{
 struct ath10k *ar = cdev->devdata;

 if (throttle_state > ATH10K_THERMAL_THROTTLE_MAX) {
  ath10k_warn(ar, "throttle state %ld is exceeding the limit %d\n",
       throttle_state, ATH10K_THERMAL_THROTTLE_MAX);
  return -EINVAL;
 }
 mutex_lock(&ar->conf_mutex);
 ar->thermal.throttle_state = throttle_state;
 ath10k_thermal_set_throttling(ar);
 mutex_unlock(&ar->conf_mutex);
 return 0;
}
