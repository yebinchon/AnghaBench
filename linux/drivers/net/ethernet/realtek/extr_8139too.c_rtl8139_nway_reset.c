
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int mii; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8139_nway_reset(struct net_device *dev)
{
 struct rtl8139_private *tp = netdev_priv(dev);
 return mii_nway_restart(&tp->mii);
}
