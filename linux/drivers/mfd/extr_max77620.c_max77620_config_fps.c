
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max77620_chip {int chip_id; int sleep_enable; int enable_global_lpm; int rmap; void** suspend_fps_period; void** shutdown_fps_period; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;

 int MAX20024_FPS_PERIOD_MAX_US ;

 int MAX77620_FPS_COUNT ;
 unsigned int MAX77620_FPS_ENFPS_SW ;
 unsigned int MAX77620_FPS_ENFPS_SW_MASK ;
 unsigned int MAX77620_FPS_EN_SRC_MASK ;
 int MAX77620_FPS_EN_SRC_SHIFT ;
 int MAX77620_FPS_PERIOD_MAX_US ;
 unsigned int MAX77620_FPS_TIME_PERIOD_MASK ;
 int MAX77620_FPS_TIME_PERIOD_SHIFT ;
 scalar_t__ MAX77620_REG_FPS_CFG0 ;

 int dev_err (struct device*,char*,int) ;
 int max77620_get_fps_period_reg_value (struct max77620_chip*,void*) ;
 void* min (int,int) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int regmap_update_bits (int ,scalar_t__,unsigned int,unsigned int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int max77620_config_fps(struct max77620_chip *chip,
          struct device_node *fps_np)
{
 struct device *dev = chip->dev;
 unsigned int mask = 0, config = 0;
 u32 fps_max_period;
 u32 param_val;
 int tperiod, fps_id;
 int ret;
 char fps_name[10];

 switch (chip->chip_id) {
 case 130:
  fps_max_period = MAX20024_FPS_PERIOD_MAX_US;
  break;
 case 129:
  fps_max_period = MAX77620_FPS_PERIOD_MAX_US;
  break;
 case 128:
  fps_max_period = MAX20024_FPS_PERIOD_MAX_US;
  break;
 default:
  return -EINVAL;
 }

 for (fps_id = 0; fps_id < MAX77620_FPS_COUNT; fps_id++) {
  sprintf(fps_name, "fps%d", fps_id);
  if (of_node_name_eq(fps_np, fps_name))
   break;
 }

 if (fps_id == MAX77620_FPS_COUNT) {
  dev_err(dev, "FPS node name %pOFn is not valid\n", fps_np);
  return -EINVAL;
 }

 ret = of_property_read_u32(fps_np, "maxim,shutdown-fps-time-period-us",
       &param_val);
 if (!ret) {
  mask |= MAX77620_FPS_TIME_PERIOD_MASK;
  chip->shutdown_fps_period[fps_id] = min(param_val,
       fps_max_period);
  tperiod = max77620_get_fps_period_reg_value(chip,
    chip->shutdown_fps_period[fps_id]);
  config |= tperiod << MAX77620_FPS_TIME_PERIOD_SHIFT;
 }

 ret = of_property_read_u32(fps_np, "maxim,suspend-fps-time-period-us",
       &param_val);
 if (!ret)
  chip->suspend_fps_period[fps_id] = min(param_val,
             fps_max_period);

 ret = of_property_read_u32(fps_np, "maxim,fps-event-source",
       &param_val);
 if (!ret) {
  if (param_val > 2) {
   dev_err(dev, "FPS%d event-source invalid\n", fps_id);
   return -EINVAL;
  }
  mask |= MAX77620_FPS_EN_SRC_MASK;
  config |= param_val << MAX77620_FPS_EN_SRC_SHIFT;
  if (param_val == 2) {
   mask |= MAX77620_FPS_ENFPS_SW_MASK;
   config |= MAX77620_FPS_ENFPS_SW;
  }
 }

 if (!chip->sleep_enable && !chip->enable_global_lpm) {
  ret = of_property_read_u32(fps_np,
    "maxim,device-state-on-disabled-event",
    &param_val);
  if (!ret) {
   if (param_val == 0)
    chip->sleep_enable = 1;
   else if (param_val == 1)
    chip->enable_global_lpm = 1;
  }
 }

 ret = regmap_update_bits(chip->rmap, MAX77620_REG_FPS_CFG0 + fps_id,
     mask, config);
 if (ret < 0) {
  dev_err(dev, "Failed to update FPS CFG: %d\n", ret);
  return ret;
 }

 return 0;
}
