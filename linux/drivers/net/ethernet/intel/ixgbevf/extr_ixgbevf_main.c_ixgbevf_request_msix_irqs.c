
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
struct ixgbevf_q_vector {int num_msix_vectors; char* name; struct ixgbevf_q_vector** q_vector; struct msix_entry* msix_entries; int hw; TYPE_2__ tx; TYPE_1__ rx; struct net_device* netdev; } ;
struct ixgbevf_adapter {int num_msix_vectors; char* name; struct ixgbevf_adapter** q_vector; struct msix_entry* msix_entries; int hw; TYPE_2__ tx; TYPE_1__ rx; struct net_device* netdev; } ;


 int NON_Q_VECTORS ;
 int free_irq (int ,struct ixgbevf_q_vector*) ;
 int hw_dbg (int *,char*,int) ;
 int ixgbevf_msix_clean_rings ;
 int ixgbevf_msix_other ;
 int request_irq (int ,int *,int ,char*,struct ixgbevf_q_vector*) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static int ixgbevf_request_msix_irqs(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;
 unsigned int ri = 0, ti = 0;
 int vector, err;

 for (vector = 0; vector < q_vectors; vector++) {
  struct ixgbevf_q_vector *q_vector = adapter->q_vector[vector];
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
  err = request_irq(entry->vector, &ixgbevf_msix_clean_rings, 0,
      q_vector->name, q_vector);
  if (err) {
   hw_dbg(&adapter->hw,
          "request_irq failed for MSIX interrupt Error: %d\n",
          err);
   goto free_queue_irqs;
  }
 }

 err = request_irq(adapter->msix_entries[vector].vector,
     &ixgbevf_msix_other, 0, netdev->name, adapter);
 if (err) {
  hw_dbg(&adapter->hw, "request_irq for msix_other failed: %d\n",
         err);
  goto free_queue_irqs;
 }

 return 0;

free_queue_irqs:
 while (vector) {
  vector--;
  free_irq(adapter->msix_entries[vector].vector,
    adapter->q_vector[vector]);
 }
 adapter->num_msix_vectors = 0;
 return err;
}
