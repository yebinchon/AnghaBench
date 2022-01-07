
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_priv_data {int dummy; } ;
struct net_device {int dummy; } ;


 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int sxgbe_reset_all_tx_queues (struct sxgbe_priv_data*) ;

__attribute__((used)) static void sxgbe_tx_timeout(struct net_device *dev)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);

 sxgbe_reset_all_tx_queues(priv);
}
