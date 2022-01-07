
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_priv_data {int rx_riwt; scalar_t__ use_riwt; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;


 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int sxgbe_riwt2usec (int ,struct sxgbe_priv_data*) ;

__attribute__((used)) static int sxgbe_get_coalesce(struct net_device *dev,
         struct ethtool_coalesce *ec)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);

 if (priv->use_riwt)
  ec->rx_coalesce_usecs = sxgbe_riwt2usec(priv->rx_riwt, priv);

 return 0;
}
