
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct altera_tse_private {int msg_enable; } ;


 struct altera_tse_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 tse_get_msglevel(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 return priv->msg_enable;
}
