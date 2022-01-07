
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mmc_gpio* handler_priv; } ;
struct mmc_host {int caps2; TYPE_1__ slot; } ;
struct mmc_gpio {int cd_gpio; scalar_t__ override_cd_active_level; } ;


 int ENOSYS ;
 int MMC_CAP2_CD_ACTIVE_HIGH ;
 int gpiod_cansleep (int ) ;
 int gpiod_get_raw_value (int ) ;
 int gpiod_get_raw_value_cansleep (int ) ;
 int gpiod_get_value (int ) ;
 int gpiod_get_value_cansleep (int ) ;

int mmc_gpio_get_cd(struct mmc_host *host)
{
 struct mmc_gpio *ctx = host->slot.handler_priv;
 int cansleep;

 if (!ctx || !ctx->cd_gpio)
  return -ENOSYS;

 cansleep = gpiod_cansleep(ctx->cd_gpio);
 if (ctx->override_cd_active_level) {
  int value = cansleep ?
    gpiod_get_raw_value_cansleep(ctx->cd_gpio) :
    gpiod_get_raw_value(ctx->cd_gpio);
  return !value ^ !!(host->caps2 & MMC_CAP2_CD_ACTIVE_HIGH);
 }

 return cansleep ?
  gpiod_get_value_cansleep(ctx->cd_gpio) :
  gpiod_get_value(ctx->cd_gpio);
}
