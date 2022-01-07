
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; scalar_t__ phydev; } ;
struct ftgmac100 {int ndev; scalar_t__ use_ncsi; int napi; scalar_t__ base; } ;


 scalar_t__ FTGMAC100_OFFSET_IER ;
 int free_irq (int ,struct net_device*) ;
 int ftgmac100_free_buffers (struct ftgmac100*) ;
 int ftgmac100_free_rings (struct ftgmac100*) ;
 int ftgmac100_stop_hw (struct ftgmac100*) ;
 int iowrite32 (int ,scalar_t__) ;
 int napi_disable (int *) ;
 int ncsi_stop_dev (int ) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int ftgmac100_stop(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);
 iowrite32(0, priv->base + FTGMAC100_OFFSET_IER);

 netif_stop_queue(netdev);
 napi_disable(&priv->napi);
 netif_napi_del(&priv->napi);
 if (netdev->phydev)
  phy_stop(netdev->phydev);
 else if (priv->use_ncsi)
  ncsi_stop_dev(priv->ndev);

 ftgmac100_stop_hw(priv);
 free_irq(netdev->irq, netdev);
 ftgmac100_free_buffers(priv);
 ftgmac100_free_rings(priv);

 return 0;
}
