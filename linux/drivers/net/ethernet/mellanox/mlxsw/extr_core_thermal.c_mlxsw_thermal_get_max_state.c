
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 unsigned long MLXSW_THERMAL_MAX_STATE ;

__attribute__((used)) static int mlxsw_thermal_get_max_state(struct thermal_cooling_device *cdev,
           unsigned long *p_state)
{
 *p_state = MLXSW_THERMAL_MAX_STATE;
 return 0;
}
