
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct greth_private {int msg_enable; } ;


 struct greth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void greth_set_msglevel(struct net_device *dev, u32 value)
{
 struct greth_private *greth = netdev_priv(dev);
 greth->msg_enable = value;
}
