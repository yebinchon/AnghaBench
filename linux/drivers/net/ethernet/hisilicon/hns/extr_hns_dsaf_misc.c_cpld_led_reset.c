
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int cpld_led_value; int cpld_ctrl_reg; int cpld_ctrl; } ;


 int CPLD_LED_DEFAULT_VALUE ;
 int dsaf_write_syscon (int ,int ,int ) ;

__attribute__((used)) static void cpld_led_reset(struct hns_mac_cb *mac_cb)
{
 if (!mac_cb || !mac_cb->cpld_ctrl)
  return;

 dsaf_write_syscon(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
     CPLD_LED_DEFAULT_VALUE);
 mac_cb->cpld_led_value = CPLD_LED_DEFAULT_VALUE;
}
