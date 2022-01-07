
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int phy_num_led_triggers; int * led_link_trigger; int * phy_led_triggers; } ;


 int phy_led_trigger_unregister (int *) ;

void phy_led_triggers_unregister(struct phy_device *phy)
{
 int i;

 for (i = 0; i < phy->phy_num_led_triggers; i++)
  phy_led_trigger_unregister(&phy->phy_led_triggers[i]);

 if (phy->led_link_trigger)
  phy_led_trigger_unregister(phy->led_link_trigger);
}
