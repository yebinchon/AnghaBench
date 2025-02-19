
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfp_net_dp {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_stack_tx_rings; TYPE_2__* netdev; int num_rx_rings; } ;
struct nfp_net {unsigned int max_r_vecs; TYPE_1__ dp; int * r_vecs; } ;
struct TYPE_5__ {scalar_t__ real_num_tx_queues; } ;


 int netif_set_real_num_rx_queues (TYPE_2__*,int ) ;
 int netif_set_real_num_tx_queues (TYPE_2__*,scalar_t__) ;
 int nfp_net_dp_swap (struct nfp_net*,struct nfp_net_dp*) ;
 int nfp_net_set_config_and_enable (struct nfp_net*) ;
 int nfp_net_vector_assign_rings (TYPE_1__*,int *,unsigned int) ;

__attribute__((used)) static int nfp_net_dp_swap_enable(struct nfp_net *nn, struct nfp_net_dp *dp)
{
 unsigned int r;
 int err;

 nfp_net_dp_swap(nn, dp);

 for (r = 0; r < nn->max_r_vecs; r++)
  nfp_net_vector_assign_rings(&nn->dp, &nn->r_vecs[r], r);

 err = netif_set_real_num_rx_queues(nn->dp.netdev, nn->dp.num_rx_rings);
 if (err)
  return err;

 if (nn->dp.netdev->real_num_tx_queues != nn->dp.num_stack_tx_rings) {
  err = netif_set_real_num_tx_queues(nn->dp.netdev,
         nn->dp.num_stack_tx_rings);
  if (err)
   return err;
 }

 return nfp_net_set_config_and_enable(nn);
}
