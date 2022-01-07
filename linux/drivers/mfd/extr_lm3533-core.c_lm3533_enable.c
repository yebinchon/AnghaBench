
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533 {int gpio_hwen; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void lm3533_enable(struct lm3533 *lm3533)
{
 if (gpio_is_valid(lm3533->gpio_hwen))
  gpio_set_value(lm3533->gpio_hwen, 1);
}
