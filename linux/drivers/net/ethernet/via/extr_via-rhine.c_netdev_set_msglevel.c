
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rhine_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct rhine_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netdev_set_msglevel(struct net_device *dev, u32 value)
{
 struct rhine_private *rp = netdev_priv(dev);

 rp->msg_enable = value;
}
