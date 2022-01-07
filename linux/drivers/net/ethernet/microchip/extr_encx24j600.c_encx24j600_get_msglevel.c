
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {int msg_enable; } ;


 struct encx24j600_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 encx24j600_get_msglevel(struct net_device *dev)
{
 struct encx24j600_priv *priv = netdev_priv(dev);

 return priv->msg_enable;
}
