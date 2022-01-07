
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cd_irq; struct mmc_gpio* handler_priv; } ;
struct mmc_host {TYPE_1__ slot; int parent; } ;
struct mmc_gpio {int cd_debounce_delay_ms; void* ro_label; void* cd_label; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (int ) ;
 void* devm_kasprintf (int ,int ,char*,int ) ;
 struct mmc_gpio* devm_kzalloc (int ,int,int ) ;

int mmc_gpio_alloc(struct mmc_host *host)
{
 struct mmc_gpio *ctx = devm_kzalloc(host->parent,
         sizeof(*ctx), GFP_KERNEL);

 if (ctx) {
  ctx->cd_debounce_delay_ms = 200;
  ctx->cd_label = devm_kasprintf(host->parent, GFP_KERNEL,
    "%s cd", dev_name(host->parent));
  if (!ctx->cd_label)
   return -ENOMEM;
  ctx->ro_label = devm_kasprintf(host->parent, GFP_KERNEL,
    "%s ro", dev_name(host->parent));
  if (!ctx->ro_label)
   return -ENOMEM;
  host->slot.handler_priv = ctx;
  host->slot.cd_irq = -EINVAL;
 }

 return ctx ? 0 : -ENOMEM;
}
