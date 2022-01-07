
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct ath10k* devdata; } ;
struct TYPE_2__ {unsigned long throttle_state; } ;
struct ath10k {int conf_mutex; TYPE_1__ thermal; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
ath10k_thermal_get_cur_throttle_state(struct thermal_cooling_device *cdev,
          unsigned long *state)
{
 struct ath10k *ar = cdev->devdata;

 mutex_lock(&ar->conf_mutex);
 *state = ar->thermal.throttle_state;
 mutex_unlock(&ar->conf_mutex);

 return 0;
}
