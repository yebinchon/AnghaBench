
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_mac_cb {int dev; int cpld_led_value; int cpld_ctrl_reg; int cpld_ctrl; } ;
typedef enum hnae_led_state { ____Placeholder_hnae_led_state } hnae_led_state ;


 int CPLD_LED_DEFAULT_VALUE ;
 int CPLD_LED_ON_VALUE ;
 int DSAF_LED_ANCHOR_B ;
 int EINVAL ;


 int dev_err (int ,char*,int) ;
 int dsaf_read_syscon (int ,int ,int *) ;
 int dsaf_set_bit (int ,int ,int ) ;
 int dsaf_write_syscon (int ,int ,int ) ;

__attribute__((used)) static int cpld_set_led_id(struct hns_mac_cb *mac_cb,
      enum hnae_led_state status)
{
 u32 val = 0;
 int ret;

 if (!mac_cb->cpld_ctrl)
  return 0;

 switch (status) {
 case 129:
  ret = dsaf_read_syscon(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
           &val);
  if (ret)
   return ret;

  dsaf_set_bit(val, DSAF_LED_ANCHOR_B, CPLD_LED_ON_VALUE);
  dsaf_write_syscon(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
      val);
  mac_cb->cpld_led_value = val;
  break;
 case 128:
  dsaf_set_bit(mac_cb->cpld_led_value, DSAF_LED_ANCHOR_B,
        CPLD_LED_DEFAULT_VALUE);
  dsaf_write_syscon(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
      mac_cb->cpld_led_value);
  break;
 default:
  dev_err(mac_cb->dev, "invalid led state: %d!", status);
  return -EINVAL;
 }

 return 0;
}
