
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_r_vecs; int netdev; } ;
struct nfp_net {TYPE_1__* irq_entries; TYPE_3__ dp; TYPE_2__* r_vecs; } ;
struct TYPE_5__ {int irq_vector; int napi; } ;
struct TYPE_4__ {int vector; } ;


 size_t NFP_NET_IRQ_LSC_IDX ;
 int enable_irq (int ) ;
 int napi_enable (int *) ;
 int netif_tx_wake_all_queues (int ) ;
 int nfp_net_read_link_status (struct nfp_net*) ;

__attribute__((used)) static void nfp_net_open_stack(struct nfp_net *nn)
{
 unsigned int r;

 for (r = 0; r < nn->dp.num_r_vecs; r++) {
  napi_enable(&nn->r_vecs[r].napi);
  enable_irq(nn->r_vecs[r].irq_vector);
 }

 netif_tx_wake_all_queues(nn->dp.netdev);

 enable_irq(nn->irq_entries[NFP_NET_IRQ_LSC_IDX].vector);
 nfp_net_read_link_status(nn);
}
