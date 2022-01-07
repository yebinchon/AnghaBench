
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {char* name; } ;
struct msix_entry {int vector; int entry; } ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ count; } ;
struct fm10k_q_vector {int * itr; TYPE_3__ rx; TYPE_2__ tx; int affinity_mask; int name; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int num_q_vectors; struct fm10k_q_vector** q_vector; int * uc_addr; struct msix_entry* msix_entries; struct fm10k_hw hw; struct net_device* netdev; } ;


 size_t FM10K_ITR (int ) ;
 int FM10K_ITR_ENABLE ;
 int FM10K_ITR_MASK_SET ;
 size_t FM10K_VFITR (int ) ;
 size_t NON_Q_VECTORS ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_msix_clean_rings ;
 int free_irq (int ,struct fm10k_q_vector*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int netif_err (struct fm10k_intfc*,int ,struct net_device*,char*,int) ;
 int probe ;
 int request_irq (int ,int *,int ,int ,struct fm10k_q_vector*) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int writel (int ,int *) ;

int fm10k_qv_request_irq(struct fm10k_intfc *interface)
{
 struct net_device *dev = interface->netdev;
 struct fm10k_hw *hw = &interface->hw;
 struct msix_entry *entry;
 unsigned int ri = 0, ti = 0;
 int vector, err;

 entry = &interface->msix_entries[NON_Q_VECTORS];

 for (vector = 0; vector < interface->num_q_vectors; vector++) {
  struct fm10k_q_vector *q_vector = interface->q_vector[vector];


  if (q_vector->tx.count && q_vector->rx.count) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "%s-TxRx-%u", dev->name, ri++);
   ti++;
  } else if (q_vector->rx.count) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "%s-rx-%u", dev->name, ri++);
  } else if (q_vector->tx.count) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "%s-tx-%u", dev->name, ti++);
  } else {

   continue;
  }


  q_vector->itr = (hw->mac.type == fm10k_mac_pf) ?
    &interface->uc_addr[FM10K_ITR(entry->entry)] :
    &interface->uc_addr[FM10K_VFITR(entry->entry)];


  err = request_irq(entry->vector, &fm10k_msix_clean_rings, 0,
      q_vector->name, q_vector);
  if (err) {
   netif_err(interface, probe, dev,
      "request_irq failed for MSIX interrupt Error: %d\n",
      err);
   goto err_out;
  }


  irq_set_affinity_hint(entry->vector, &q_vector->affinity_mask);


  writel(FM10K_ITR_ENABLE, q_vector->itr);

  entry++;
 }

 return 0;

err_out:

 while (vector) {
  struct fm10k_q_vector *q_vector;

  entry--;
  vector--;
  q_vector = interface->q_vector[vector];

  if (!q_vector->tx.count && !q_vector->rx.count)
   continue;


  irq_set_affinity_hint(entry->vector, ((void*)0));


  writel(FM10K_ITR_MASK_SET, q_vector->itr);

  free_irq(entry->vector, q_vector);
 }

 return err;
}
