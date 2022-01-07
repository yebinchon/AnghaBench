
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hns_mac_cb {int mac_id; } ;


 int HNS_OP_LED_SET_FUNC ;
 int hns_dsaf_acpi_ledctrl_by_port (struct hns_mac_cb*,int ,int,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void hns_cpld_set_led_acpi(struct hns_mac_cb *mac_cb, int link_status,
                            u16 speed, int data)
{
       if (!mac_cb) {
               pr_err("cpld_led_set mac_cb is null!\n");
               return;
       }

       hns_dsaf_acpi_ledctrl_by_port(mac_cb, HNS_OP_LED_SET_FUNC,
               link_status, mac_cb->mac_id, data);
}
