
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6397_chip {int dummy; } ;
struct irq_domain {struct mt6397_chip* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct mt6397_chip*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int mt6397_irq_chip ;

__attribute__((used)) static int mt6397_irq_domain_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hw)
{
 struct mt6397_chip *mt6397 = d->host_data;

 irq_set_chip_data(irq, mt6397);
 irq_set_chip_and_handler(irq, &mt6397_irq_chip, handle_level_irq);
 irq_set_nested_thread(irq, 1);
 irq_set_noprobe(irq);

 return 0;
}
