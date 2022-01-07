
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_queue_vector {int irq; int * mask; } ;
struct mvpp2_port {int nqvecs; struct mvpp2_queue_vector* qvecs; } ;


 int IRQ_NO_BALANCING ;
 int free_irq (int ,struct mvpp2_queue_vector*) ;
 int irq_clear_status_flags (int ,int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void mvpp2_irqs_deinit(struct mvpp2_port *port)
{
 int i;

 for (i = 0; i < port->nqvecs; i++) {
  struct mvpp2_queue_vector *qv = port->qvecs + i;

  irq_set_affinity_hint(qv->irq, ((void*)0));
  kfree(qv->mask);
  qv->mask = ((void*)0);
  irq_clear_status_flags(qv->irq, IRQ_NO_BALANCING);
  free_irq(qv->irq, qv);
 }
}
