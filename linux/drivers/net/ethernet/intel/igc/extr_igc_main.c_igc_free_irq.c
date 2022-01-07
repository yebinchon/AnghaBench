
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct igc_adapter {int num_q_vectors; TYPE_1__* pdev; struct igc_adapter** q_vector; TYPE_2__* msix_entries; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int irq; } ;


 int free_irq (int ,struct igc_adapter*) ;

__attribute__((used)) static void igc_free_irq(struct igc_adapter *adapter)
{
 if (adapter->msix_entries) {
  int vector = 0, i;

  free_irq(adapter->msix_entries[vector++].vector, adapter);

  for (i = 0; i < adapter->num_q_vectors; i++)
   free_irq(adapter->msix_entries[vector++].vector,
     adapter->q_vector[i]);
 } else {
  free_irq(adapter->pdev->irq, adapter);
 }
}
