
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ phydev; } ;
struct altera_tse_private {TYPE_1__* dmaops; int mac_cfg_lock; int tx_lock; int tx_irq; int rx_irq; int rxdma_irq_lock; int napi; } ;
struct TYPE_2__ {int (* uninit_dma ) (struct altera_tse_private*) ;int (* reset_dma ) (struct altera_tse_private*) ;int (* disable_txirq ) (struct altera_tse_private*) ;int (* disable_rxirq ) (struct altera_tse_private*) ;} ;


 int free_irq (int ,struct net_device*) ;
 int free_skbufs (struct net_device*) ;
 int napi_disable (int *) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int reset_mac (struct altera_tse_private*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct altera_tse_private*) ;
 int stub2 (struct altera_tse_private*) ;
 int stub3 (struct altera_tse_private*) ;
 int stub4 (struct altera_tse_private*) ;

__attribute__((used)) static int tse_shutdown(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 int ret;
 unsigned long int flags;


 if (dev->phydev)
  phy_stop(dev->phydev);

 netif_stop_queue(dev);
 napi_disable(&priv->napi);


 spin_lock_irqsave(&priv->rxdma_irq_lock, flags);
 priv->dmaops->disable_rxirq(priv);
 priv->dmaops->disable_txirq(priv);
 spin_unlock_irqrestore(&priv->rxdma_irq_lock, flags);


 free_irq(priv->rx_irq, dev);
 free_irq(priv->tx_irq, dev);


 spin_lock(&priv->mac_cfg_lock);
 spin_lock(&priv->tx_lock);

 ret = reset_mac(priv);




 if (ret)
  netdev_dbg(dev, "Cannot reset MAC core (error: %d)\n", ret);
 priv->dmaops->reset_dma(priv);
 free_skbufs(dev);

 spin_unlock(&priv->tx_lock);
 spin_unlock(&priv->mac_cfg_lock);

 priv->dmaops->uninit_dma(priv);

 return 0;
}
