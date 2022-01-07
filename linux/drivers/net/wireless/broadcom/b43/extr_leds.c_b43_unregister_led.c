
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_led {int * wl; int led_dev; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void b43_unregister_led(struct b43_led *led)
{
 if (!led->wl)
  return;
 led_classdev_unregister(&led->led_dev);
 led->wl = ((void*)0);
}
