
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sxgbe_priv_data {int rxcsum_insertion; int ioaddr; TYPE_2__* hw; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {TYPE_1__* mac; } ;
struct TYPE_3__ {int (* disable_rx_csum ) (int ) ;int (* enable_rx_csum ) (int ) ;} ;


 int NETIF_F_RXCSUM ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int sxgbe_set_features(struct net_device *dev,
         netdev_features_t features)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);
 netdev_features_t changed = dev->features ^ features;

 if (changed & NETIF_F_RXCSUM) {
  if (features & NETIF_F_RXCSUM) {
   priv->hw->mac->enable_rx_csum(priv->ioaddr);
   priv->rxcsum_insertion = 1;
  } else {
   priv->hw->mac->disable_rx_csum(priv->ioaddr);
   priv->rxcsum_insertion = 0;
  }
 }

 return 0;
}
