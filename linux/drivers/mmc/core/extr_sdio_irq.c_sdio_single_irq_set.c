
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {scalar_t__ irq_handler; } ;
struct mmc_card {int sdio_funcs; struct sdio_func* sdio_single_irq; struct sdio_func** sdio_func; TYPE_1__* host; } ;
struct TYPE_2__ {int caps; int sdio_irqs; } ;


 int MMC_CAP_SDIO_IRQ ;

__attribute__((used)) static void sdio_single_irq_set(struct mmc_card *card)
{
 struct sdio_func *func;
 int i;

 card->sdio_single_irq = ((void*)0);
 if ((card->host->caps & MMC_CAP_SDIO_IRQ) &&
     card->host->sdio_irqs == 1)
  for (i = 0; i < card->sdio_funcs; i++) {
         func = card->sdio_func[i];
         if (func && func->irq_handler) {
          card->sdio_single_irq = func;
          break;
         }
        }
}
