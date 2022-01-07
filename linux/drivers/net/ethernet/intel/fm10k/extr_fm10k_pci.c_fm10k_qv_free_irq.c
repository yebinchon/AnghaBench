
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msix_entry {int vector; } ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;
struct fm10k_q_vector {int itr; TYPE_2__ rx; TYPE_1__ tx; } ;
struct fm10k_intfc {int num_q_vectors; struct fm10k_q_vector** q_vector; struct msix_entry* msix_entries; } ;


 int FM10K_ITR_MASK_SET ;
 int NON_Q_VECTORS ;
 int free_irq (int ,struct fm10k_q_vector*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int writel (int ,int ) ;

void fm10k_qv_free_irq(struct fm10k_intfc *interface)
{
 int vector = interface->num_q_vectors;
 struct msix_entry *entry;

 entry = &interface->msix_entries[NON_Q_VECTORS + vector];

 while (vector) {
  struct fm10k_q_vector *q_vector;

  vector--;
  entry--;
  q_vector = interface->q_vector[vector];

  if (!q_vector->tx.count && !q_vector->rx.count)
   continue;


  irq_set_affinity_hint(entry->vector, ((void*)0));


  writel(FM10K_ITR_MASK_SET, q_vector->itr);

  free_irq(entry->vector, q_vector);
 }
}
