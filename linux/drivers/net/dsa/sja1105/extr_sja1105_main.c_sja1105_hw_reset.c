
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static void sja1105_hw_reset(struct gpio_desc *gpio, unsigned int pulse_len,
        unsigned int startup_delay)
{
 gpiod_set_value_cansleep(gpio, 1);

 msleep(pulse_len);
 gpiod_set_value_cansleep(gpio, 0);

 msleep(startup_delay);
}
