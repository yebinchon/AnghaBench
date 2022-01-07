
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {char* name; } ;
struct TYPE_9__ {TYPE_3__* ring; } ;
struct TYPE_7__ {TYPE_1__* ring; } ;
struct igb_q_vector {int num_q_vectors; char* name; struct igb_q_vector** q_vector; TYPE_5__* msix_entries; TYPE_4__ rx; TYPE_2__ tx; scalar_t__ io_addr; scalar_t__ itr_register; struct net_device* netdev; } ;
struct igb_adapter {int num_q_vectors; char* name; struct igb_adapter** q_vector; TYPE_5__* msix_entries; TYPE_4__ rx; TYPE_2__ tx; scalar_t__ io_addr; scalar_t__ itr_register; struct net_device* netdev; } ;
struct TYPE_10__ {int vector; } ;
struct TYPE_8__ {int queue_index; } ;
struct TYPE_6__ {int queue_index; } ;


 scalar_t__ E1000_EITR (int) ;
 int free_irq (int ,struct igb_q_vector*) ;
 int igb_configure_msix (struct igb_q_vector*) ;
 int igb_msix_other ;
 int igb_msix_ring ;
 int request_irq (int ,int ,int ,char*,struct igb_q_vector*) ;
 int sprintf (char*,char*,char*,...) ;

__attribute__((used)) static int igb_request_msix(struct igb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i, err = 0, vector = 0, free_vector = 0;

 err = request_irq(adapter->msix_entries[vector].vector,
     igb_msix_other, 0, netdev->name, adapter);
 if (err)
  goto err_out;

 for (i = 0; i < adapter->num_q_vectors; i++) {
  struct igb_q_vector *q_vector = adapter->q_vector[i];

  vector++;

  q_vector->itr_register = adapter->io_addr + E1000_EITR(vector);

  if (q_vector->rx.ring && q_vector->tx.ring)
   sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
    q_vector->rx.ring->queue_index);
  else if (q_vector->tx.ring)
   sprintf(q_vector->name, "%s-tx-%u", netdev->name,
    q_vector->tx.ring->queue_index);
  else if (q_vector->rx.ring)
   sprintf(q_vector->name, "%s-rx-%u", netdev->name,
    q_vector->rx.ring->queue_index);
  else
   sprintf(q_vector->name, "%s-unused", netdev->name);

  err = request_irq(adapter->msix_entries[vector].vector,
      igb_msix_ring, 0, q_vector->name,
      q_vector);
  if (err)
   goto err_free;
 }

 igb_configure_msix(adapter);
 return 0;

err_free:

 free_irq(adapter->msix_entries[free_vector++].vector, adapter);

 vector--;
 for (i = 0; i < vector; i++) {
  free_irq(adapter->msix_entries[free_vector++].vector,
    adapter->q_vector[i]);
 }
err_out:
 return err;
}
