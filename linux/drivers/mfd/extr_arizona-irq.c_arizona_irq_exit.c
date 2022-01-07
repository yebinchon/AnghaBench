
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int irq; int virq; int aod_irq_chip; int irq_chip; scalar_t__ ctrlif_error; } ;


 int ARIZONA_AOD_IRQ_INDEX ;
 int ARIZONA_IRQ_BOOT_DONE ;
 int ARIZONA_IRQ_CTRLIF_ERR ;
 int ARIZONA_MAIN_IRQ_INDEX ;
 int arizona_free_irq (struct arizona*,int ,struct arizona*) ;
 int free_irq (int ,struct arizona*) ;
 int irq_dispose_mapping (unsigned int) ;
 int irq_domain_remove (int ) ;
 unsigned int irq_find_mapping (int ,int ) ;
 int regmap_del_irq_chip (unsigned int,int ) ;

int arizona_irq_exit(struct arizona *arizona)
{
 unsigned int virq;

 if (arizona->ctrlif_error)
  arizona_free_irq(arizona, ARIZONA_IRQ_CTRLIF_ERR, arizona);
 arizona_free_irq(arizona, ARIZONA_IRQ_BOOT_DONE, arizona);

 virq = irq_find_mapping(arizona->virq, ARIZONA_MAIN_IRQ_INDEX);
 regmap_del_irq_chip(virq, arizona->irq_chip);
 irq_dispose_mapping(virq);

 virq = irq_find_mapping(arizona->virq, ARIZONA_AOD_IRQ_INDEX);
 regmap_del_irq_chip(virq, arizona->aod_irq_chip);
 irq_dispose_mapping(virq);

 irq_domain_remove(arizona->virq);

 free_irq(arizona->irq, arizona);

 return 0;
}
