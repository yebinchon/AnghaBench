
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int VSC73XX_BLOCK_SYSTEM ;
 int VSC73XX_GPIO ;
 struct vsc73xx* gpiochip_get_data (struct gpio_chip*) ;
 int vsc73xx_update_bits (struct vsc73xx*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int vsc73xx_gpio_direction_input(struct gpio_chip *chip,
     unsigned int offset)
{
 struct vsc73xx *vsc = gpiochip_get_data(chip);

 return vsc73xx_update_bits(vsc, VSC73XX_BLOCK_SYSTEM, 0,
        VSC73XX_GPIO, BIT(offset + 4),
        0);
}
