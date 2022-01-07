
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct au1000_private {int msg_enable; } ;


 struct au1000_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 au1000_get_msglevel(struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 return aup->msg_enable;
}
