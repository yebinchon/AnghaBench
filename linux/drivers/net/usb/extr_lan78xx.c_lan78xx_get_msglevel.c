
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct lan78xx_net {int msg_enable; } ;


 struct lan78xx_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 lan78xx_get_msglevel(struct net_device *net)
{
 struct lan78xx_net *dev = netdev_priv(net);

 return dev->msg_enable;
}
