
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_r_vector {TYPE_1__* nfp_net; int tasklet; int irq_entry; int lock; int tx_ring; } ;
struct TYPE_2__ {int dp; } ;


 int __nfp_ctrl_tx_queued (struct nfp_net_r_vector*) ;
 scalar_t__ nfp_ctrl_rx (struct nfp_net_r_vector*) ;
 int nfp_net_irq_unmask (TYPE_1__*,int ) ;
 int nfp_net_tx_complete (int ,int ) ;
 int nn_dp_warn (int *,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void nfp_ctrl_poll(unsigned long arg)
{
 struct nfp_net_r_vector *r_vec = (void *)arg;

 spin_lock(&r_vec->lock);
 nfp_net_tx_complete(r_vec->tx_ring, 0);
 __nfp_ctrl_tx_queued(r_vec);
 spin_unlock(&r_vec->lock);

 if (nfp_ctrl_rx(r_vec)) {
  nfp_net_irq_unmask(r_vec->nfp_net, r_vec->irq_entry);
 } else {
  tasklet_schedule(&r_vec->tasklet);
  nn_dp_warn(&r_vec->nfp_net->dp,
      "control message budget exceeded!\n");
 }
}
