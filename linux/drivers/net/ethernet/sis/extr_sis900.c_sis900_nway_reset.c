
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis900_private {int mii_info; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 struct sis900_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sis900_nway_reset(struct net_device *net_dev)
{
 struct sis900_private *sis_priv = netdev_priv(net_dev);
 return mii_nway_restart(&sis_priv->mii_info);
}
