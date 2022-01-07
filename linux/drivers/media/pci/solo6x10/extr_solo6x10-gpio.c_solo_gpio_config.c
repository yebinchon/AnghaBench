
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 int solo_gpio_clear (struct solo_dev*,int) ;
 int solo_gpio_mode (struct solo_dev*,int,int) ;
 int solo_gpio_set (struct solo_dev*,int) ;
 int udelay (int) ;

__attribute__((used)) static void solo_gpio_config(struct solo_dev *solo_dev)
{

 solo_gpio_mode(solo_dev, 0x30, 1);
 solo_gpio_clear(solo_dev, 0x30);
 udelay(100);
 solo_gpio_set(solo_dev, 0x30);
 udelay(100);



 solo_gpio_mode(solo_dev, 0x0f, 2);


 solo_gpio_mode(solo_dev, 0xff00, 1);


 solo_gpio_clear(solo_dev, 0xff00);


 solo_gpio_mode(solo_dev, 0xffff0000, 0);
}
