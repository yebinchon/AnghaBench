
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {char* name; } ;
struct msix_entry {int vector; } ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbe_q_vector {int num_q_vectors; char* name; int flags; struct msix_entry* msix_entries; int pdev; struct ixgbe_q_vector** q_vector; int affinity_mask; TYPE_2__ tx; TYPE_1__ rx; struct net_device* netdev; } ;
struct ixgbe_adapter {int num_q_vectors; char* name; int flags; struct msix_entry* msix_entries; int pdev; struct ixgbe_adapter** q_vector; int affinity_mask; TYPE_2__ tx; TYPE_1__ rx; struct net_device* netdev; } ;


 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int e_err (int ,char*,int) ;
 int free_irq (int ,struct ixgbe_q_vector*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int ixgbe_msix_clean_rings ;
 int * ixgbe_msix_other ;
 int kfree (struct msix_entry*) ;
 int pci_disable_msix (int ) ;
 int probe ;
 int request_irq (int ,int *,int ,char*,struct ixgbe_q_vector*) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static int ixgbe_request_msix_irqs(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 unsigned int ri = 0, ti = 0;
 int vector, err;

 for (vector = 0; vector < adapter->num_q_vectors; vector++) {
  struct ixgbe_q_vector *q_vector = adapter->q_vector[vector];
  struct msix_entry *entry = &adapter->msix_entries[vector];

  if (q_vector->tx.ring && q_vector->rx.ring) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "%s-TxRx-%u", netdev->name, ri++);
   ti++;
  } else if (q_vector->rx.ring) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "%s-rx-%u", netdev->name, ri++);
  } else if (q_vector->tx.ring) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "%s-tx-%u", netdev->name, ti++);
  } else {

   continue;
  }
  err = request_irq(entry->vector, &ixgbe_msix_clean_rings, 0,
      q_vector->name, q_vector);
  if (err) {
   e_err(probe, "request_irq failed for MSIX interrupt "
         "Error: %d\n", err);
   goto free_queue_irqs;
  }

  if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {

   irq_set_affinity_hint(entry->vector,
           &q_vector->affinity_mask);
  }
 }

 err = request_irq(adapter->msix_entries[vector].vector,
     ixgbe_msix_other, 0, netdev->name, adapter);
 if (err) {
  e_err(probe, "request_irq for msix_other failed: %d\n", err);
  goto free_queue_irqs;
 }

 return 0;

free_queue_irqs:
 while (vector) {
  vector--;
  irq_set_affinity_hint(adapter->msix_entries[vector].vector,
          ((void*)0));
  free_irq(adapter->msix_entries[vector].vector,
    adapter->q_vector[vector]);
 }
 adapter->flags &= ~IXGBE_FLAG_MSIX_ENABLED;
 pci_disable_msix(adapter->pdev);
 kfree(adapter->msix_entries);
 adapter->msix_entries = ((void*)0);
 return err;
}
