
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcm_sysport_priv {int msg_enable; } ;


 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 bcm_sysport_get_msglvl(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);

 return priv->msg_enable;
}
