
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {TYPE_2__* last_triggered; TYPE_1__* led_link_trigger; } ;
struct TYPE_4__ {int trigger; } ;
struct TYPE_3__ {int trigger; } ;


 int LED_OFF ;
 int led_trigger_event (int *,int ) ;

__attribute__((used)) static void phy_led_trigger_no_link(struct phy_device *phy)
{
 if (phy->last_triggered) {
  led_trigger_event(&phy->last_triggered->trigger, LED_OFF);
  led_trigger_event(&phy->led_link_trigger->trigger, LED_OFF);
  phy->last_triggered = ((void*)0);
 }
}
