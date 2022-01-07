
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcm_sysport_priv {int msg_enable; } ;


 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcm_sysport_set_msglvl(struct net_device *dev, u32 enable)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);

 priv->msg_enable = enable;
}
