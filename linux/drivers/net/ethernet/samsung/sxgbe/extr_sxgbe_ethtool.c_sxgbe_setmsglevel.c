
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sxgbe_priv_data {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sxgbe_setmsglevel(struct net_device *dev, u32 level)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);
 priv->msg_enable = level;
}
