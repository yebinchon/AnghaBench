
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {unsigned int num_tx_queues; int name; int dev_addr; int features; } ;
struct bcm_sysport_priv {int old_duplex; int old_link; int old_pause; int irq0; int irq1; int is_lite; int phy_interface; int phy_dn; } ;


 int CMD_RX_EN ;
 int CMD_TX_EN ;
 int ENODEV ;
 int INTRL2_0_RDMA_MBDONE ;
 int INTRL2_0_TX_RING_FULL ;
 int TDMA_LL_RAM_INIT_BUSY ;
 int TDMA_STATUS ;
 int UMAC_MAX_FRAME_LEN ;
 int UMAC_MAX_MTU_SIZE ;
 int bcm_sysport_adj_link ;
 int bcm_sysport_fini_rx_ring (struct bcm_sysport_priv*) ;
 int bcm_sysport_fini_tx_ring (struct bcm_sysport_priv*,unsigned int) ;
 int bcm_sysport_init_rx_ring (struct bcm_sysport_priv*) ;
 int bcm_sysport_init_tx_ring (struct bcm_sysport_priv*,unsigned int) ;
 int bcm_sysport_mask_all_intrs (struct bcm_sysport_priv*) ;
 int bcm_sysport_netif_start (struct net_device*) ;
 int bcm_sysport_rx_isr ;
 int bcm_sysport_set_features (struct net_device*,int ) ;
 int bcm_sysport_tx_isr ;
 int free_irq (int ,struct net_device*) ;
 int gib_set_pad_extension (struct bcm_sysport_priv*) ;
 int intrl2_0_mask_set (struct bcm_sysport_priv*,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int ,int ,int ) ;
 int phy_disconnect (struct phy_device*) ;
 int rbuf_init (struct bcm_sysport_priv*) ;
 int rdma_enable_set (struct bcm_sysport_priv*,int) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int tdma_enable_set (struct bcm_sysport_priv*,int) ;
 int tdma_writel (struct bcm_sysport_priv*,int ,int ) ;
 int topctrl_flush (struct bcm_sysport_priv*) ;
 int umac_enable_set (struct bcm_sysport_priv*,int,int) ;
 int umac_reset (struct bcm_sysport_priv*) ;
 int umac_set_hw_addr (struct bcm_sysport_priv*,int ) ;
 int umac_writel (struct bcm_sysport_priv*,int ,int ) ;

__attribute__((used)) static int bcm_sysport_open(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 struct phy_device *phydev;
 unsigned int i;
 int ret;


 umac_reset(priv);


 topctrl_flush(priv);


 umac_enable_set(priv, CMD_RX_EN | CMD_TX_EN, 0);


 rbuf_init(priv);


 if (!priv->is_lite)
  umac_writel(priv, UMAC_MAX_MTU_SIZE, UMAC_MAX_FRAME_LEN);
 else
  gib_set_pad_extension(priv);




 bcm_sysport_set_features(dev, dev->features);


 umac_set_hw_addr(priv, dev->dev_addr);

 phydev = of_phy_connect(dev, priv->phy_dn, bcm_sysport_adj_link,
    0, priv->phy_interface);
 if (!phydev) {
  netdev_err(dev, "could not attach to PHY\n");
  return -ENODEV;
 }


 priv->old_duplex = -1;
 priv->old_link = -1;
 priv->old_pause = -1;


 bcm_sysport_mask_all_intrs(priv);

 ret = request_irq(priv->irq0, bcm_sysport_rx_isr, 0, dev->name, dev);
 if (ret) {
  netdev_err(dev, "failed to request RX interrupt\n");
  goto out_phy_disconnect;
 }

 if (!priv->is_lite) {
  ret = request_irq(priv->irq1, bcm_sysport_tx_isr, 0,
      dev->name, dev);
  if (ret) {
   netdev_err(dev, "failed to request TX interrupt\n");
   goto out_free_irq0;
  }
 }


 for (i = 0; i < dev->num_tx_queues; i++) {
  ret = bcm_sysport_init_tx_ring(priv, i);
  if (ret) {
   netdev_err(dev, "failed to initialize TX ring %d\n",
       i);
   goto out_free_tx_ring;
  }
 }


 tdma_writel(priv, TDMA_LL_RAM_INIT_BUSY, TDMA_STATUS);


 ret = bcm_sysport_init_rx_ring(priv);
 if (ret) {
  netdev_err(dev, "failed to initialize RX ring\n");
  goto out_free_rx_ring;
 }


 ret = rdma_enable_set(priv, 1);
 if (ret)
  goto out_free_rx_ring;


 ret = tdma_enable_set(priv, 1);
 if (ret)
  goto out_clear_rx_int;


 umac_enable_set(priv, CMD_RX_EN | CMD_TX_EN, 1);

 bcm_sysport_netif_start(dev);

 netif_tx_start_all_queues(dev);

 return 0;

out_clear_rx_int:
 intrl2_0_mask_set(priv, INTRL2_0_RDMA_MBDONE | INTRL2_0_TX_RING_FULL);
out_free_rx_ring:
 bcm_sysport_fini_rx_ring(priv);
out_free_tx_ring:
 for (i = 0; i < dev->num_tx_queues; i++)
  bcm_sysport_fini_tx_ring(priv, i);
 if (!priv->is_lite)
  free_irq(priv->irq1, dev);
out_free_irq0:
 free_irq(priv->irq0, dev);
out_phy_disconnect:
 phy_disconnect(phydev);
 return ret;
}
