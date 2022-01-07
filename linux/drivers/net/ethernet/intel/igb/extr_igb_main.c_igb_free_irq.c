
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct igb_adapter {int flags; int num_q_vectors; TYPE_1__* pdev; struct igb_adapter** q_vector; TYPE_2__* msix_entries; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int irq; } ;


 int IGB_FLAG_HAS_MSIX ;
 int free_irq (int ,struct igb_adapter*) ;

__attribute__((used)) static void igb_free_irq(struct igb_adapter *adapter)
{
 if (adapter->flags & IGB_FLAG_HAS_MSIX) {
  int vector = 0, i;

  free_irq(adapter->msix_entries[vector++].vector, adapter);

  for (i = 0; i < adapter->num_q_vectors; i++)
   free_irq(adapter->msix_entries[vector++].vector,
     adapter->q_vector[i]);
 } else {
  free_irq(adapter->pdev->irq, adapter);
 }
}
