
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_led {int * ah; int led_dev; } ;


 int ath5k_led_off (int *) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static void
ath5k_unregister_led(struct ath5k_led *led)
{
 if (!led->ah)
  return;
 led_classdev_unregister(&led->led_dev);
 ath5k_led_off(led->ah);
 led->ah = ((void*)0);
}
