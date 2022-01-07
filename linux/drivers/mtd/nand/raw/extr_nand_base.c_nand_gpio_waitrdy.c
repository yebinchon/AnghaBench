
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct gpio_desc {int dummy; } ;


 int ETIMEDOUT ;
 int cond_resched () ;
 scalar_t__ gpiod_get_value_cansleep (struct gpio_desc*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpiod,
        unsigned long timeout_ms)
{

 timeout_ms = jiffies + msecs_to_jiffies(timeout_ms);
 do {
  if (gpiod_get_value_cansleep(gpiod))
   return 0;

  cond_resched();
 } while (time_before(jiffies, timeout_ms));

 return gpiod_get_value_cansleep(gpiod) ? 0 : -ETIMEDOUT;
}
