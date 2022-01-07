
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int gpiod_set_value (struct gpio_desc*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tw9910_set_gpio_value(struct gpio_desc *desc, int value)
{
 if (desc) {
  gpiod_set_value(desc, value);
  usleep_range(500, 1000);
 }
}
