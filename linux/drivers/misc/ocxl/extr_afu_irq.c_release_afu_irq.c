
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afu_irq {int name; int virq; } ;


 int free_irq (int ,struct afu_irq*) ;
 int irq_dispose_mapping (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void release_afu_irq(struct afu_irq *irq)
{
 free_irq(irq->virq, irq);
 irq_dispose_mapping(irq->virq);
 kfree(irq->name);
}
