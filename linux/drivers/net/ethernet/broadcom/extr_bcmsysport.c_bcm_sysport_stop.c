
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int num_tx_queues; int phydev; } ;
struct bcm_sysport_priv {int irq1; int is_lite; int irq0; } ;


 int CMD_RX_EN ;
 int CMD_TX_EN ;
 int bcm_sysport_fini_rx_ring (struct bcm_sysport_priv*) ;
 int bcm_sysport_fini_tx_ring (struct bcm_sysport_priv*,unsigned int) ;
 int bcm_sysport_netif_stop (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int phy_disconnect (int ) ;
 int rdma_enable_set (struct bcm_sysport_priv*,int ) ;
 int tdma_enable_set (struct bcm_sysport_priv*,int ) ;
 int umac_enable_set (struct bcm_sysport_priv*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bcm_sysport_stop(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 unsigned int i;
 int ret;

 bcm_sysport_netif_stop(dev);


 umac_enable_set(priv, CMD_RX_EN, 0);

 ret = tdma_enable_set(priv, 0);
 if (ret) {
  netdev_err(dev, "timeout disabling RDMA\n");
  return ret;
 }


 usleep_range(2000, 3000);

 ret = rdma_enable_set(priv, 0);
 if (ret) {
  netdev_err(dev, "timeout disabling TDMA\n");
  return ret;
 }


 umac_enable_set(priv, CMD_TX_EN, 0);


 for (i = 0; i < dev->num_tx_queues; i++)
  bcm_sysport_fini_tx_ring(priv, i);
 bcm_sysport_fini_rx_ring(priv);

 free_irq(priv->irq0, dev);
 if (!priv->is_lite)
  free_irq(priv->irq1, dev);


 phy_disconnect(dev->phydev);

 return 0;
}
