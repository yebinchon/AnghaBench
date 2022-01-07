
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan743x_vector {scalar_t__ flags; scalar_t__ int_mask; int * context; int * handler; int irq; } ;
struct TYPE_2__ {struct lan743x_vector* vector_list; } ;
struct lan743x_adapter {TYPE_1__ intr; } ;


 int free_irq (int ,struct lan743x_vector*) ;

__attribute__((used)) static void lan743x_intr_unregister_isr(struct lan743x_adapter *adapter,
     int vector_index)
{
 struct lan743x_vector *vector = &adapter->intr.vector_list
     [vector_index];

 free_irq(vector->irq, vector);
 vector->handler = ((void*)0);
 vector->context = ((void*)0);
 vector->int_mask = 0;
 vector->flags = 0;
}
