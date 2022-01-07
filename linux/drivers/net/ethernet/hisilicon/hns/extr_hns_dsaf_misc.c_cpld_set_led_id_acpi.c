
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int dev; int mac_id; } ;
typedef enum hnae_led_state { ____Placeholder_hnae_led_state } hnae_led_state ;


 int CPLD_LED_DEFAULT_VALUE ;
 int CPLD_LED_ON_VALUE ;
 int EINVAL ;


 int HNS_OP_LOCATE_LED_SET_FUNC ;
 int dev_err (int ,char*,int) ;
 int hns_dsaf_acpi_locate_ledctrl_by_port (struct hns_mac_cb*,int ,int ,int ) ;

__attribute__((used)) static int cpld_set_led_id_acpi(struct hns_mac_cb *mac_cb,
    enum hnae_led_state status)
{
 switch (status) {
 case 129:
  hns_dsaf_acpi_locate_ledctrl_by_port(mac_cb,
           HNS_OP_LOCATE_LED_SET_FUNC,
           CPLD_LED_ON_VALUE,
           mac_cb->mac_id);
  break;
 case 128:
  hns_dsaf_acpi_locate_ledctrl_by_port(mac_cb,
           HNS_OP_LOCATE_LED_SET_FUNC,
           CPLD_LED_DEFAULT_VALUE,
           mac_cb->mac_id);
  break;
 default:
  dev_err(mac_cb->dev, "invalid led state: %d!", status);
  return -EINVAL;
 }

 return 0;
}
