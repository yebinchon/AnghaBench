
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ring; } ;
struct TYPE_3__ {int ring; } ;
struct i40e_q_vector {int napi; TYPE_2__ rx; TYPE_1__ tx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static irqreturn_t i40e_msix_clean_rings(int irq, void *data)
{
 struct i40e_q_vector *q_vector = data;

 if (!q_vector->tx.ring && !q_vector->rx.ring)
  return IRQ_HANDLED;

 napi_schedule_irqoff(&q_vector->napi);

 return IRQ_HANDLED;
}
