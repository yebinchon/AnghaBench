
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cd_irq; struct mmc_gpio* handler_priv; } ;
struct mmc_host {int caps; TYPE_1__ slot; int parent; } ;
struct mmc_gpio {int cd_label; scalar_t__ cd_gpio_isr; int cd_gpio; } ;


 int EINVAL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int MMC_CAP_NEEDS_POLL ;
 int devm_request_threaded_irq (int ,int,int *,scalar_t__,int,int ,struct mmc_host*) ;
 int gpiod_to_irq (int ) ;
 scalar_t__ mmc_gpio_cd_irqt ;

void mmc_gpiod_request_cd_irq(struct mmc_host *host)
{
 struct mmc_gpio *ctx = host->slot.handler_priv;
 int irq = -EINVAL;
 int ret;

 if (host->slot.cd_irq >= 0 || !ctx || !ctx->cd_gpio)
  return;





 if (!(host->caps & MMC_CAP_NEEDS_POLL))
  irq = gpiod_to_irq(ctx->cd_gpio);

 if (irq >= 0) {
  if (!ctx->cd_gpio_isr)
   ctx->cd_gpio_isr = mmc_gpio_cd_irqt;
  ret = devm_request_threaded_irq(host->parent, irq,
   ((void*)0), ctx->cd_gpio_isr,
   IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
   ctx->cd_label, host);
  if (ret < 0)
   irq = ret;
 }

 host->slot.cd_irq = irq;

 if (irq < 0)
  host->caps |= MMC_CAP_NEEDS_POLL;
}
