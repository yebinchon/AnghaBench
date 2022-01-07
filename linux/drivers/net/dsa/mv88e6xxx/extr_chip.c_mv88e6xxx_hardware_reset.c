
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {struct gpio_desc* reset; } ;
struct gpio_desc {int dummy; } ;


 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mv88e6xxx_hardware_reset(struct mv88e6xxx_chip *chip)
{
 struct gpio_desc *gpiod = chip->reset;


 if (gpiod) {
  gpiod_set_value_cansleep(gpiod, 1);
  usleep_range(10000, 20000);
  gpiod_set_value_cansleep(gpiod, 0);
  usleep_range(10000, 20000);
 }
}
