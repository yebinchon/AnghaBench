
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int irq; struct phy_device* phydev; } ;
struct mpc52xx_fec_priv {int t_irq; int r_irq; int rx_dmatsk; } ;


 int free_irq (int ,struct net_device*) ;
 int mpc52xx_fec_free_rx_buffers (struct net_device*,int ) ;
 int mpc52xx_fec_stop (struct net_device*) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_stop (struct phy_device*) ;

__attribute__((used)) static int mpc52xx_fec_close(struct net_device *dev)
{
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;

 netif_stop_queue(dev);

 mpc52xx_fec_stop(dev);

 mpc52xx_fec_free_rx_buffers(dev, priv->rx_dmatsk);

 free_irq(dev->irq, dev);
 free_irq(priv->r_irq, dev);
 free_irq(priv->t_irq, dev);

 if (phydev) {

  phy_stop(phydev);
  phy_disconnect(phydev);
 }

 return 0;
}
