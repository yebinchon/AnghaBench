
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int release; int notify; } ;
struct TYPE_7__ {scalar_t__ ring; } ;
struct TYPE_6__ {scalar_t__ ring; } ;
struct iavf_q_vector {int v_idx; TYPE_5__ affinity_notify; int name; TYPE_2__ tx; TYPE_1__ rx; } ;
struct iavf_adapter {unsigned int num_msix_vectors; struct iavf_q_vector* q_vectors; TYPE_4__* msix_entries; TYPE_3__* pdev; } ;
struct TYPE_9__ {int vector; } ;
struct TYPE_8__ {int dev; } ;


 unsigned int NONQ_VECS ;
 int cpumask_local_spread (int ,int) ;
 int dev_info (int *,char*,int) ;
 int free_irq (int,struct iavf_q_vector*) ;
 int * get_cpu_mask (int) ;
 int iavf_irq_affinity_notify ;
 int iavf_irq_affinity_release ;
 int iavf_irq_disable (struct iavf_adapter*) ;
 int iavf_msix_clean_rings ;
 int irq_set_affinity_hint (int,int *) ;
 int irq_set_affinity_notifier (int,TYPE_5__*) ;
 int request_irq (int,int ,int ,int ,struct iavf_q_vector*) ;
 int snprintf (int ,int,char*,char*,int ) ;

__attribute__((used)) static int
iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
{
 unsigned int vector, q_vectors;
 unsigned int rx_int_idx = 0, tx_int_idx = 0;
 int irq_num, err;
 int cpu;

 iavf_irq_disable(adapter);

 q_vectors = adapter->num_msix_vectors - NONQ_VECS;

 for (vector = 0; vector < q_vectors; vector++) {
  struct iavf_q_vector *q_vector = &adapter->q_vectors[vector];

  irq_num = adapter->msix_entries[vector + NONQ_VECS].vector;

  if (q_vector->tx.ring && q_vector->rx.ring) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "iavf-%s-TxRx-%d", basename, rx_int_idx++);
   tx_int_idx++;
  } else if (q_vector->rx.ring) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "iavf-%s-rx-%d", basename, rx_int_idx++);
  } else if (q_vector->tx.ring) {
   snprintf(q_vector->name, sizeof(q_vector->name),
     "iavf-%s-tx-%d", basename, tx_int_idx++);
  } else {

   continue;
  }
  err = request_irq(irq_num,
      iavf_msix_clean_rings,
      0,
      q_vector->name,
      q_vector);
  if (err) {
   dev_info(&adapter->pdev->dev,
     "Request_irq failed, error: %d\n", err);
   goto free_queue_irqs;
  }

  q_vector->affinity_notify.notify = iavf_irq_affinity_notify;
  q_vector->affinity_notify.release =
         iavf_irq_affinity_release;
  irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);




  cpu = cpumask_local_spread(q_vector->v_idx, -1);
  irq_set_affinity_hint(irq_num, get_cpu_mask(cpu));
 }

 return 0;

free_queue_irqs:
 while (vector) {
  vector--;
  irq_num = adapter->msix_entries[vector + NONQ_VECS].vector;
  irq_set_affinity_notifier(irq_num, ((void*)0));
  irq_set_affinity_hint(irq_num, ((void*)0));
  free_irq(irq_num, &adapter->q_vectors[vector]);
 }
 return err;
}
