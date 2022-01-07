
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_adapter {int num_msix_vectors; int * q_vectors; TYPE_1__* msix_entries; } ;
struct TYPE_2__ {int vector; } ;


 int NONQ_VECS ;
 int free_irq (int,int *) ;
 int irq_set_affinity_hint (int,int *) ;
 int irq_set_affinity_notifier (int,int *) ;

__attribute__((used)) static void iavf_free_traffic_irqs(struct iavf_adapter *adapter)
{
 int vector, irq_num, q_vectors;

 if (!adapter->msix_entries)
  return;

 q_vectors = adapter->num_msix_vectors - NONQ_VECS;

 for (vector = 0; vector < q_vectors; vector++) {
  irq_num = adapter->msix_entries[vector + NONQ_VECS].vector;
  irq_set_affinity_notifier(irq_num, ((void*)0));
  irq_set_affinity_hint(irq_num, ((void*)0));
  free_irq(irq_num, &adapter->q_vectors[vector]);
 }
}
