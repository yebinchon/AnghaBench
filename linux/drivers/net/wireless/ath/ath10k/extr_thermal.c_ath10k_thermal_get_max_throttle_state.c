
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 unsigned long ATH10K_THERMAL_THROTTLE_MAX ;

__attribute__((used)) static int
ath10k_thermal_get_max_throttle_state(struct thermal_cooling_device *cdev,
          unsigned long *state)
{
 *state = ATH10K_THERMAL_THROTTLE_MAX;

 return 0;
}
