
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_r_vecs; } ;
struct nfp_net {int * r_vecs; TYPE_1__ dp; } ;


 int NFP_NET_CFG_EXN ;
 int NFP_NET_CFG_LSC ;
 int NFP_NET_IRQ_EXN_IDX ;
 int NFP_NET_IRQ_LSC_IDX ;
 int nfp_net_aux_irq_free (struct nfp_net*,int ,int ) ;
 int nfp_net_cleanup_vector (struct nfp_net*,int *) ;
 int nfp_net_rx_rings_free (TYPE_1__*) ;
 int nfp_net_tx_rings_free (TYPE_1__*) ;

__attribute__((used)) static void nfp_net_close_free_all(struct nfp_net *nn)
{
 unsigned int r;

 nfp_net_tx_rings_free(&nn->dp);
 nfp_net_rx_rings_free(&nn->dp);

 for (r = 0; r < nn->dp.num_r_vecs; r++)
  nfp_net_cleanup_vector(nn, &nn->r_vecs[r]);

 nfp_net_aux_irq_free(nn, NFP_NET_CFG_LSC, NFP_NET_IRQ_LSC_IDX);
 nfp_net_aux_irq_free(nn, NFP_NET_CFG_EXN, NFP_NET_IRQ_EXN_IDX);
}
