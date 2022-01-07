
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct altera_tse_private {unsigned int rx_ring_size; unsigned int tx_ring_size; int * tx_ring; int * rx_ring; } ;


 int kfree (int *) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int tse_free_rx_buffer (struct altera_tse_private*,int *) ;
 int tse_free_tx_buffer (struct altera_tse_private*,int *) ;

__attribute__((used)) static void free_skbufs(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 unsigned int rx_descs = priv->rx_ring_size;
 unsigned int tx_descs = priv->tx_ring_size;
 int i;


 for (i = 0; i < rx_descs; i++)
  tse_free_rx_buffer(priv, &priv->rx_ring[i]);
 for (i = 0; i < tx_descs; i++)
  tse_free_tx_buffer(priv, &priv->tx_ring[i]);


 kfree(priv->tx_ring);
}
