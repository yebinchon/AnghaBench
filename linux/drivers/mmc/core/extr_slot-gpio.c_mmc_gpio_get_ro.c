
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mmc_gpio* handler_priv; } ;
struct mmc_host {TYPE_1__ slot; } ;
struct mmc_gpio {int ro_gpio; } ;


 int ENOSYS ;
 int gpiod_get_value_cansleep (int ) ;

int mmc_gpio_get_ro(struct mmc_host *host)
{
 struct mmc_gpio *ctx = host->slot.handler_priv;

 if (!ctx || !ctx->ro_gpio)
  return -ENOSYS;

 return gpiod_get_value_cansleep(ctx->ro_gpio);
}
