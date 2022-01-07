
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633 {int irq; } ;


 int free_irq (int ,struct pcf50633*) ;

void pcf50633_irq_free(struct pcf50633 *pcf)
{
 free_irq(pcf->irq, pcf);
}
