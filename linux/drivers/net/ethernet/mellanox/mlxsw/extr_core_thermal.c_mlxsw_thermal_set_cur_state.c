
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct thermal_cooling_device {struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {unsigned long* cooling_levels; int core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_MFSC_LEN ;
 unsigned long MLXSW_THERMAL_MAX_STATE ;
 unsigned long MLXSW_THERMAL_SPEED_MAX ;
 unsigned long MLXSW_THERMAL_SPEED_MIN ;
 int dev_err (struct device*,char*) ;
 unsigned long max (unsigned long,unsigned long) ;
 int mfsc ;
 unsigned long mlxsw_duty_to_state (int ) ;
 int mlxsw_get_cooling_device_idx (struct mlxsw_thermal*,struct thermal_cooling_device*) ;
 int mlxsw_reg_mfsc_pack (char*,int,int ) ;
 int mlxsw_reg_mfsc_pwm_duty_cycle_get (char*) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_state_to_duty (unsigned long) ;

__attribute__((used)) static int mlxsw_thermal_set_cur_state(struct thermal_cooling_device *cdev,
           unsigned long state)

{
 struct mlxsw_thermal *thermal = cdev->devdata;
 struct device *dev = thermal->bus_info->dev;
 char mfsc_pl[MLXSW_REG_MFSC_LEN];
 unsigned long cur_state, i;
 int idx;
 u8 duty;
 int err;

 idx = mlxsw_get_cooling_device_idx(thermal, cdev);
 if (idx < 0)
  return idx;
 if (state >= MLXSW_THERMAL_SPEED_MIN &&
     state <= MLXSW_THERMAL_SPEED_MAX) {
  state -= MLXSW_THERMAL_MAX_STATE;
  for (i = 0; i <= MLXSW_THERMAL_MAX_STATE; i++)
   thermal->cooling_levels[i] = max(state, i);

  mlxsw_reg_mfsc_pack(mfsc_pl, idx, 0);
  err = mlxsw_reg_query(thermal->core, MLXSW_REG(mfsc), mfsc_pl);
  if (err)
   return err;

  duty = mlxsw_reg_mfsc_pwm_duty_cycle_get(mfsc_pl);
  cur_state = mlxsw_duty_to_state(duty);




  if (state < cur_state)
   return 0;

  state = cur_state;
 }

 if (state > MLXSW_THERMAL_MAX_STATE)
  return -EINVAL;


 state = thermal->cooling_levels[state];
 mlxsw_reg_mfsc_pack(mfsc_pl, idx, mlxsw_state_to_duty(state));
 err = mlxsw_reg_write(thermal->core, MLXSW_REG(mfsc), mfsc_pl);
 if (err) {
  dev_err(dev, "Failed to write PWM duty\n");
  return err;
 }
 return 0;
}
