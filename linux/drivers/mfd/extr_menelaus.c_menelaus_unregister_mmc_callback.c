
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mmc_callback_data; int * mmc_callback; } ;


 int MENELAUS_MMC_S1CD_IRQ ;
 int MENELAUS_MMC_S1D1_IRQ ;
 int MENELAUS_MMC_S2CD_IRQ ;
 int MENELAUS_MMC_S2D1_IRQ ;
 int menelaus_remove_irq_work (int ) ;
 TYPE_1__* the_menelaus ;

void menelaus_unregister_mmc_callback(void)
{
 menelaus_remove_irq_work(MENELAUS_MMC_S1CD_IRQ);
 menelaus_remove_irq_work(MENELAUS_MMC_S2CD_IRQ);
 menelaus_remove_irq_work(MENELAUS_MMC_S1D1_IRQ);
 menelaus_remove_irq_work(MENELAUS_MMC_S2D1_IRQ);

 the_menelaus->mmc_callback = ((void*)0);
 the_menelaus->mmc_callback_data = ((void*)0);
}
