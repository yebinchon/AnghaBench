
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mmc_gpio* handler_priv; } ;
struct mmc_host {int trigger_card_event; TYPE_1__ slot; } ;
struct mmc_gpio {int cd_debounce_delay_ms; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mmc_detect_change (struct mmc_host*,int ) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static irqreturn_t mmc_gpio_cd_irqt(int irq, void *dev_id)
{

 struct mmc_host *host = dev_id;
 struct mmc_gpio *ctx = host->slot.handler_priv;

 host->trigger_card_event = 1;
 mmc_detect_change(host, msecs_to_jiffies(ctx->cd_debounce_delay_ms));

 return IRQ_HANDLED;
}
