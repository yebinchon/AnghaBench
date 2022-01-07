
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {int msg_enable; } ;


 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcmgenet_set_msglevel(struct net_device *dev, u32 level)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);

 priv->msg_enable = level;
}
