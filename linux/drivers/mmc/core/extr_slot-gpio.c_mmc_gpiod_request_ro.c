
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mmc_gpio* handler_priv; } ;
struct mmc_host {int parent; TYPE_1__ slot; } ;
struct mmc_gpio {struct gpio_desc* ro_gpio; } ;
struct gpio_desc {int dummy; } ;


 int GPIOD_IN ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 struct gpio_desc* devm_gpiod_get_index (int ,char const*,unsigned int,int ) ;
 int gpiod_is_active_low (struct gpio_desc*) ;
 int gpiod_set_debounce (struct gpio_desc*,unsigned int) ;

int mmc_gpiod_request_ro(struct mmc_host *host, const char *con_id,
    unsigned int idx,
    unsigned int debounce, bool *gpio_invert)
{
 struct mmc_gpio *ctx = host->slot.handler_priv;
 struct gpio_desc *desc;
 int ret;

 desc = devm_gpiod_get_index(host->parent, con_id, idx, GPIOD_IN);
 if (IS_ERR(desc))
  return PTR_ERR(desc);

 if (debounce) {
  ret = gpiod_set_debounce(desc, debounce);
  if (ret < 0)
   return ret;
 }

 if (gpio_invert)
  *gpio_invert = !gpiod_is_active_low(desc);

 ctx->ro_gpio = desc;

 return 0;
}
