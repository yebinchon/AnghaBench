
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrl; unsigned int num_rx_rings; unsigned int num_tx_rings; unsigned int num_r_vecs; int * tx_rings; int * rx_rings; } ;
struct nfp_net {int cap; TYPE_1__ dp; } ;


 int NFP_NET_CFG_CTRL ;
 int NFP_NET_CFG_CTRL_ENABLE ;
 int NFP_NET_CFG_CTRL_RINGCFG ;
 int NFP_NET_CFG_RXRS_ENABLE ;
 int NFP_NET_CFG_TXRS_ENABLE ;
 int NFP_NET_CFG_UPDATE_GEN ;
 int NFP_NET_CFG_UPDATE_MSIX ;
 int NFP_NET_CFG_UPDATE_RING ;
 int nfp_net_reconfig (struct nfp_net*,int) ;
 int nfp_net_rx_ring_reset (int *) ;
 int nfp_net_tx_ring_reset (TYPE_1__*,int *) ;
 int nfp_net_vec_clear_ring_data (struct nfp_net*,unsigned int) ;
 int nn_err (struct nfp_net*,char*,int) ;
 int nn_writel (struct nfp_net*,int ,int) ;
 int nn_writeq (struct nfp_net*,int ,int ) ;

__attribute__((used)) static void nfp_net_clear_config_and_disable(struct nfp_net *nn)
{
 u32 new_ctrl, update;
 unsigned int r;
 int err;

 new_ctrl = nn->dp.ctrl;
 new_ctrl &= ~NFP_NET_CFG_CTRL_ENABLE;
 update = NFP_NET_CFG_UPDATE_GEN;
 update |= NFP_NET_CFG_UPDATE_MSIX;
 update |= NFP_NET_CFG_UPDATE_RING;

 if (nn->cap & NFP_NET_CFG_CTRL_RINGCFG)
  new_ctrl &= ~NFP_NET_CFG_CTRL_RINGCFG;

 nn_writeq(nn, NFP_NET_CFG_TXRS_ENABLE, 0);
 nn_writeq(nn, NFP_NET_CFG_RXRS_ENABLE, 0);

 nn_writel(nn, NFP_NET_CFG_CTRL, new_ctrl);
 err = nfp_net_reconfig(nn, update);
 if (err)
  nn_err(nn, "Could not disable device: %d\n", err);

 for (r = 0; r < nn->dp.num_rx_rings; r++)
  nfp_net_rx_ring_reset(&nn->dp.rx_rings[r]);
 for (r = 0; r < nn->dp.num_tx_rings; r++)
  nfp_net_tx_ring_reset(&nn->dp, &nn->dp.tx_rings[r]);
 for (r = 0; r < nn->dp.num_r_vecs; r++)
  nfp_net_vec_clear_ring_data(nn, r);

 nn->dp.ctrl = new_ctrl;
}
