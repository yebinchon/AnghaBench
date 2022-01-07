
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {scalar_t__ media_type; int mac_id; } ;


 scalar_t__ HNAE_MEDIA_TYPE_FIBER ;
 int HNS_OP_LED_SET_FUNC ;
 int hns_dsaf_acpi_ledctrl_by_port (struct hns_mac_cb*,int ,int ,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void cpld_led_reset_acpi(struct hns_mac_cb *mac_cb)
{
       if (!mac_cb) {
               pr_err("cpld_led_reset mac_cb is null!\n");
               return;
       }

       if (mac_cb->media_type != HNAE_MEDIA_TYPE_FIBER)
                return;

       hns_dsaf_acpi_ledctrl_by_port(mac_cb, HNS_OP_LED_SET_FUNC,
               0, mac_cb->mac_id, 0);
}
