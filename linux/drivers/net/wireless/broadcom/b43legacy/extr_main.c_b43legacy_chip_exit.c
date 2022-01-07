
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int b43legacy_gpio_cleanup (struct b43legacy_wldev*) ;
 int b43legacy_radio_turn_off (struct b43legacy_wldev*,int) ;

__attribute__((used)) static void b43legacy_chip_exit(struct b43legacy_wldev *dev)
{
 b43legacy_radio_turn_off(dev, 1);
 b43legacy_gpio_cleanup(dev);

}
