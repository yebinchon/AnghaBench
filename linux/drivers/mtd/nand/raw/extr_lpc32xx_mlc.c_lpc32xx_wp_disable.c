
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpc32xx_nand_host {TYPE_1__* ncfg; } ;
struct TYPE_2__ {int wp_gpio; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void lpc32xx_wp_disable(struct lpc32xx_nand_host *host)
{
 if (gpio_is_valid(host->ncfg->wp_gpio))
  gpio_set_value(host->ncfg->wp_gpio, 1);
}
