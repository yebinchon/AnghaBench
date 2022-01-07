
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {int vbool; int vu32; } ;
struct nsim_dev {int test1; int max_macs; } ;
struct devlink {int dummy; } ;


 int DEVLINK_PARAM_GENERIC_ID_MAX_MACS ;
 int NSIM_DEVLINK_PARAM_ID_TEST1 ;
 int devlink_param_driverinit_value_set (struct devlink*,int ,union devlink_param_value) ;

__attribute__((used)) static void nsim_devlink_set_params_init_values(struct nsim_dev *nsim_dev,
      struct devlink *devlink)
{
 union devlink_param_value value;

 value.vu32 = nsim_dev->max_macs;
 devlink_param_driverinit_value_set(devlink,
        DEVLINK_PARAM_GENERIC_ID_MAX_MACS,
        value);
 value.vbool = nsim_dev->test1;
 devlink_param_driverinit_value_set(devlink,
        NSIM_DEVLINK_PARAM_ID_TEST1,
        value);
}
