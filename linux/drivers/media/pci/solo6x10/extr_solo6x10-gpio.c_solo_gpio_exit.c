
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * label; } ;
struct solo_dev {TYPE_1__ gpio_dev; } ;


 int gpiochip_remove (TYPE_1__*) ;
 int solo_gpio_clear (struct solo_dev*,int) ;
 int solo_gpio_config (struct solo_dev*) ;

void solo_gpio_exit(struct solo_dev *solo_dev)
{






 solo_gpio_clear(solo_dev, 0x30);
 solo_gpio_config(solo_dev);
}
