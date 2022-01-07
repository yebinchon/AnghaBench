
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int irq; struct phy_device* phydev; } ;
struct nb8800_priv {int napi; } ;


 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int nb8800_dma_free (struct net_device*) ;
 int nb8800_dma_stop (struct net_device*) ;
 int nb8800_mac_rx (struct net_device*,int) ;
 int nb8800_mac_tx (struct net_device*,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_stop (struct phy_device*) ;

__attribute__((used)) static int nb8800_stop(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;

 phy_stop(phydev);

 netif_stop_queue(dev);
 napi_disable(&priv->napi);

 nb8800_dma_stop(dev);
 nb8800_mac_rx(dev, 0);
 nb8800_mac_tx(dev, 0);

 phy_disconnect(phydev);

 free_irq(dev->irq, dev);

 nb8800_dma_free(dev);

 return 0;
}
