
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int ctrl; unsigned int num_tx_rings; unsigned int num_rx_rings; int mtu; int fl_bufsz; int rx_dma_off; TYPE_1__* netdev; int * rx_rings; int * tx_rings; } ;
struct nfp_net {int rss_cfg; int cap; TYPE_2__ dp; int vxlan_usecnt; int vxlan_ports; } ;
struct TYPE_3__ {int dev_addr; } ;


 int NFP_NET_CFG_CTRL ;
 int NFP_NET_CFG_CTRL_ENABLE ;
 int NFP_NET_CFG_CTRL_IRQMOD ;
 int NFP_NET_CFG_CTRL_RINGCFG ;
 int NFP_NET_CFG_CTRL_RSS_ANY ;
 int NFP_NET_CFG_CTRL_VXLAN ;
 int NFP_NET_CFG_FLBUFSZ ;
 int NFP_NET_CFG_MTU ;
 int NFP_NET_CFG_RSS_CTRL ;
 int NFP_NET_CFG_RXRS_ENABLE ;
 int NFP_NET_CFG_TXRS_ENABLE ;
 int NFP_NET_CFG_UPDATE_GEN ;
 int NFP_NET_CFG_UPDATE_IRQMOD ;
 int NFP_NET_CFG_UPDATE_MSIX ;
 int NFP_NET_CFG_UPDATE_RING ;
 int NFP_NET_CFG_UPDATE_RSS ;
 int NFP_NET_RX_BUF_NON_DATA ;
 int memset (int *,int ,int) ;
 int nfp_net_clear_config_and_disable (struct nfp_net*) ;
 int nfp_net_coalesce_write_cfg (struct nfp_net*) ;
 int nfp_net_reconfig (struct nfp_net*,int) ;
 int nfp_net_rss_write_itbl (struct nfp_net*) ;
 int nfp_net_rss_write_key (struct nfp_net*) ;
 int nfp_net_rx_ring_fill_freelist (TYPE_2__*,int *) ;
 int nfp_net_rx_ring_hw_cfg_write (struct nfp_net*,int *,unsigned int) ;
 int nfp_net_tx_ring_hw_cfg_write (struct nfp_net*,int *,unsigned int) ;
 int nfp_net_write_mac_addr (struct nfp_net*,int ) ;
 int nn_writel (struct nfp_net*,int ,int) ;
 int nn_writeq (struct nfp_net*,int ,int) ;
 int udp_tunnel_get_rx_info (TYPE_1__*) ;

__attribute__((used)) static int nfp_net_set_config_and_enable(struct nfp_net *nn)
{
 u32 bufsz, new_ctrl, update = 0;
 unsigned int r;
 int err;

 new_ctrl = nn->dp.ctrl;

 if (nn->dp.ctrl & NFP_NET_CFG_CTRL_RSS_ANY) {
  nfp_net_rss_write_key(nn);
  nfp_net_rss_write_itbl(nn);
  nn_writel(nn, NFP_NET_CFG_RSS_CTRL, nn->rss_cfg);
  update |= NFP_NET_CFG_UPDATE_RSS;
 }

 if (nn->dp.ctrl & NFP_NET_CFG_CTRL_IRQMOD) {
  nfp_net_coalesce_write_cfg(nn);
  update |= NFP_NET_CFG_UPDATE_IRQMOD;
 }

 for (r = 0; r < nn->dp.num_tx_rings; r++)
  nfp_net_tx_ring_hw_cfg_write(nn, &nn->dp.tx_rings[r], r);
 for (r = 0; r < nn->dp.num_rx_rings; r++)
  nfp_net_rx_ring_hw_cfg_write(nn, &nn->dp.rx_rings[r], r);

 nn_writeq(nn, NFP_NET_CFG_TXRS_ENABLE, nn->dp.num_tx_rings == 64 ?
    0xffffffffffffffffULL : ((u64)1 << nn->dp.num_tx_rings) - 1);

 nn_writeq(nn, NFP_NET_CFG_RXRS_ENABLE, nn->dp.num_rx_rings == 64 ?
    0xffffffffffffffffULL : ((u64)1 << nn->dp.num_rx_rings) - 1);

 if (nn->dp.netdev)
  nfp_net_write_mac_addr(nn, nn->dp.netdev->dev_addr);

 nn_writel(nn, NFP_NET_CFG_MTU, nn->dp.mtu);

 bufsz = nn->dp.fl_bufsz - nn->dp.rx_dma_off - NFP_NET_RX_BUF_NON_DATA;
 nn_writel(nn, NFP_NET_CFG_FLBUFSZ, bufsz);


 new_ctrl |= NFP_NET_CFG_CTRL_ENABLE;
 update |= NFP_NET_CFG_UPDATE_GEN;
 update |= NFP_NET_CFG_UPDATE_MSIX;
 update |= NFP_NET_CFG_UPDATE_RING;
 if (nn->cap & NFP_NET_CFG_CTRL_RINGCFG)
  new_ctrl |= NFP_NET_CFG_CTRL_RINGCFG;

 nn_writel(nn, NFP_NET_CFG_CTRL, new_ctrl);
 err = nfp_net_reconfig(nn, update);
 if (err) {
  nfp_net_clear_config_and_disable(nn);
  return err;
 }

 nn->dp.ctrl = new_ctrl;

 for (r = 0; r < nn->dp.num_rx_rings; r++)
  nfp_net_rx_ring_fill_freelist(&nn->dp, &nn->dp.rx_rings[r]);




 if (nn->dp.ctrl & NFP_NET_CFG_CTRL_VXLAN) {
  memset(&nn->vxlan_ports, 0, sizeof(nn->vxlan_ports));
  memset(&nn->vxlan_usecnt, 0, sizeof(nn->vxlan_usecnt));
  udp_tunnel_get_rx_info(nn->dp.netdev);
 }

 return 0;
}
