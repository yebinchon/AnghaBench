
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 int SOLO_GPIO_CONFIG_0 ;
 int SOLO_GPIO_CONFIG_1 ;
 unsigned int solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,unsigned int) ;

__attribute__((used)) static void solo_gpio_mode(struct solo_dev *solo_dev,
      unsigned int port_mask, unsigned int mode)
{
 int port;
 unsigned int ret;

 ret = solo_reg_read(solo_dev, SOLO_GPIO_CONFIG_0);


 for (port = 0; port < 16; port++) {
  if (!((1 << port) & port_mask))
   continue;

  ret &= (~(3 << (port << 1)));
  ret |= ((mode & 3) << (port << 1));
 }

 solo_reg_write(solo_dev, SOLO_GPIO_CONFIG_0, ret);


 ret = solo_reg_read(solo_dev, SOLO_GPIO_CONFIG_1);

 for (port = 0; port < 16; port++) {
  if (!((1UL << (port + 16)) & port_mask))
   continue;

  if (!mode)
   ret &= ~(1UL << port);
  else
   ret |= 1UL << port;
 }


 ret |= 0xffff0000;

 solo_reg_write(solo_dev, SOLO_GPIO_CONFIG_1, ret);
}
