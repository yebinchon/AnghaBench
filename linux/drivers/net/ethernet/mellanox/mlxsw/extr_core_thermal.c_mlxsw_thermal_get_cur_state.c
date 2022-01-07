
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct thermal_cooling_device {struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {int core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MFSC_LEN ;
 int dev_err (struct device*,char*) ;
 int mfsc ;
 unsigned long mlxsw_duty_to_state (int ) ;
 int mlxsw_get_cooling_device_idx (struct mlxsw_thermal*,struct thermal_cooling_device*) ;
 int mlxsw_reg_mfsc_pack (char*,int,int ) ;
 int mlxsw_reg_mfsc_pwm_duty_cycle_get (char*) ;
 int mlxsw_reg_query (int ,int ,char*) ;

__attribute__((used)) static int mlxsw_thermal_get_cur_state(struct thermal_cooling_device *cdev,
           unsigned long *p_state)

{
 struct mlxsw_thermal *thermal = cdev->devdata;
 struct device *dev = thermal->bus_info->dev;
 char mfsc_pl[MLXSW_REG_MFSC_LEN];
 int err, idx;
 u8 duty;

 idx = mlxsw_get_cooling_device_idx(thermal, cdev);
 if (idx < 0)
  return idx;

 mlxsw_reg_mfsc_pack(mfsc_pl, idx, 0);
 err = mlxsw_reg_query(thermal->core, MLXSW_REG(mfsc), mfsc_pl);
 if (err) {
  dev_err(dev, "Failed to query PWM duty\n");
  return err;
 }

 duty = mlxsw_reg_mfsc_pwm_duty_cycle_get(mfsc_pl);
 *p_state = mlxsw_duty_to_state(duty);
 return 0;
}
