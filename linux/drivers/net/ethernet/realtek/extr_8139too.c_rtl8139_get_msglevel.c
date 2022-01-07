
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8139_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct rtl8139_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 rtl8139_get_msglevel(struct net_device *dev)
{
 struct rtl8139_private *tp = netdev_priv(dev);
 return tp->msg_enable;
}
