
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis900_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct sis900_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 sis900_get_msglevel(struct net_device *net_dev)
{
 struct sis900_private *sis_priv = netdev_priv(net_dev);
 return sis_priv->msg_enable;
}
