
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mmc_gpio* handler_priv; } ;
struct mmc_host {TYPE_1__ slot; } ;
struct mmc_gpio {scalar_t__ ro_gpio; } ;



bool mmc_can_gpio_ro(struct mmc_host *host)
{
 struct mmc_gpio *ctx = host->slot.handler_priv;

 return ctx->ro_gpio ? 1 : 0;
}
