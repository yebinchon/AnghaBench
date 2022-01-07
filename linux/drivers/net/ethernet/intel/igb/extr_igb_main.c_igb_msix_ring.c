
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_q_vector {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int igb_write_itr (struct igb_q_vector*) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t igb_msix_ring(int irq, void *data)
{
 struct igb_q_vector *q_vector = data;


 igb_write_itr(q_vector);

 napi_schedule(&q_vector->napi);

 return IRQ_HANDLED;
}
