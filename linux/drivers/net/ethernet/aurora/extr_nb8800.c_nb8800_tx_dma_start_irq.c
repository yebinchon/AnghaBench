
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nb8800_priv {int tx_lock; } ;


 int __nb8800_tx_dma_start (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nb8800_tx_dma_start_irq(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);

 spin_lock(&priv->tx_lock);
 __nb8800_tx_dma_start(dev);
 spin_unlock(&priv->tx_lock);
}
