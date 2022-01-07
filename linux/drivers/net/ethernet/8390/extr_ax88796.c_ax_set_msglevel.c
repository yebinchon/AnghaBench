
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ei_device {int msg_enable; } ;


 struct ei_device* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ax_set_msglevel(struct net_device *dev, u32 v)
{
 struct ei_device *ei_local = netdev_priv(dev);

 ei_local->msg_enable = v;
}
