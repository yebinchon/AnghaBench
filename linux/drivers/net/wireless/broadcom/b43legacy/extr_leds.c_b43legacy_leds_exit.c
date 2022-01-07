
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int led_radio; int led_assoc; int led_rx; int led_tx; } ;


 int b43legacy_unregister_led (int *) ;

void b43legacy_leds_exit(struct b43legacy_wldev *dev)
{
 b43legacy_unregister_led(&dev->led_tx);
 b43legacy_unregister_led(&dev->led_rx);
 b43legacy_unregister_led(&dev->led_assoc);
 b43legacy_unregister_led(&dev->led_radio);
}
