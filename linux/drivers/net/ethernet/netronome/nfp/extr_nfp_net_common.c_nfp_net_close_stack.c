
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_r_vecs; int netdev; } ;
struct nfp_net {int link_up; TYPE_3__ dp; TYPE_1__* r_vecs; TYPE_2__* irq_entries; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {int napi; int irq_vector; } ;


 size_t NFP_NET_IRQ_LSC_IDX ;
 int disable_irq (int ) ;
 int napi_disable (int *) ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static void nfp_net_close_stack(struct nfp_net *nn)
{
 unsigned int r;

 disable_irq(nn->irq_entries[NFP_NET_IRQ_LSC_IDX].vector);
 netif_carrier_off(nn->dp.netdev);
 nn->link_up = 0;

 for (r = 0; r < nn->dp.num_r_vecs; r++) {
  disable_irq(nn->r_vecs[r].irq_vector);
  napi_disable(&nn->r_vecs[r].napi);
 }

 netif_tx_disable(nn->dp.netdev);
}
