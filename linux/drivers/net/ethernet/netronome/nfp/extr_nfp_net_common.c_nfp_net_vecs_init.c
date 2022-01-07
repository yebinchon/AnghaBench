
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_r_vector {int affinity_mask; int tasklet; int lock; int queue; int handler; int irq_vector; int irq_entry; struct nfp_net* nfp_net; } ;
struct TYPE_2__ {scalar_t__ netdev; } ;
struct nfp_net {int max_r_vecs; TYPE_1__ dp; struct nfp_net_r_vector* r_vecs; struct msix_entry* irq_entries; int exn_handler; int lsc_handler; } ;
struct msix_entry {int vector; int entry; } ;


 int NFP_NET_NON_Q_VECTORS ;
 int __skb_queue_head_init (int *) ;
 int cpumask_set_cpu (int,int *) ;
 int nfp_ctrl_irq_rxtx ;
 int nfp_ctrl_poll ;
 int nfp_net_irq_exn ;
 int nfp_net_irq_lsc ;
 int nfp_net_irq_rxtx ;
 int spin_lock_init (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static void nfp_net_vecs_init(struct nfp_net *nn)
{
 struct nfp_net_r_vector *r_vec;
 int r;

 nn->lsc_handler = nfp_net_irq_lsc;
 nn->exn_handler = nfp_net_irq_exn;

 for (r = 0; r < nn->max_r_vecs; r++) {
  struct msix_entry *entry;

  entry = &nn->irq_entries[NFP_NET_NON_Q_VECTORS + r];

  r_vec = &nn->r_vecs[r];
  r_vec->nfp_net = nn;
  r_vec->irq_entry = entry->entry;
  r_vec->irq_vector = entry->vector;

  if (nn->dp.netdev) {
   r_vec->handler = nfp_net_irq_rxtx;
  } else {
   r_vec->handler = nfp_ctrl_irq_rxtx;

   __skb_queue_head_init(&r_vec->queue);
   spin_lock_init(&r_vec->lock);
   tasklet_init(&r_vec->tasklet, nfp_ctrl_poll,
         (unsigned long)r_vec);
   tasklet_disable(&r_vec->tasklet);
  }

  cpumask_set_cpu(r, &r_vec->affinity_mask);
 }
}
