
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ring; } ;
struct TYPE_4__ {int ring; } ;
struct ixgbevf_adapter {int num_msix_vectors; struct ixgbevf_adapter** q_vector; TYPE_3__* msix_entries; TYPE_2__ tx; TYPE_1__ rx; } ;
struct TYPE_6__ {int vector; } ;


 int free_irq (int ,struct ixgbevf_adapter*) ;

__attribute__((used)) static void ixgbevf_free_irq(struct ixgbevf_adapter *adapter)
{
 int i, q_vectors;

 if (!adapter->msix_entries)
  return;

 q_vectors = adapter->num_msix_vectors;
 i = q_vectors - 1;

 free_irq(adapter->msix_entries[i].vector, adapter);
 i--;

 for (; i >= 0; i--) {

  if (!adapter->q_vector[i]->rx.ring &&
      !adapter->q_vector[i]->tx.ring)
   continue;

  free_irq(adapter->msix_entries[i].vector,
    adapter->q_vector[i]);
 }
}
