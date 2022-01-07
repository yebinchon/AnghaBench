
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_led_trigger {int trigger; } ;


 int led_trigger_unregister (int *) ;

__attribute__((used)) static void phy_led_trigger_unregister(struct phy_led_trigger *plt)
{
 led_trigger_unregister(&plt->trigger);
}
