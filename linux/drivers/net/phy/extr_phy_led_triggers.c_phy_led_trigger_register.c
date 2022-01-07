
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct phy_led_trigger {unsigned int speed; TYPE_1__ trigger; int name; } ;
struct phy_device {int dummy; } ;


 int led_trigger_register (TYPE_1__*) ;
 int phy_led_trigger_format_name (struct phy_device*,int ,int,int ) ;
 int phy_speed_to_str (unsigned int) ;

__attribute__((used)) static int phy_led_trigger_register(struct phy_device *phy,
        struct phy_led_trigger *plt,
        unsigned int speed)
{
 plt->speed = speed;
 phy_led_trigger_format_name(phy, plt->name, sizeof(plt->name),
        phy_speed_to_str(speed));
 plt->trigger.name = plt->name;

 return led_trigger_register(&plt->trigger);
}
