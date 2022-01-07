
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_led {int * dev; int activelow; int index; int led_dev; } ;


 int b43legacy_led_turn_off (int *,int ,int ) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static void b43legacy_unregister_led(struct b43legacy_led *led)
{
 if (!led->dev)
  return;
 led_classdev_unregister(&led->led_dev);
 b43legacy_led_turn_off(led->dev, led->index, led->activelow);
 led->dev = ((void*)0);
}
