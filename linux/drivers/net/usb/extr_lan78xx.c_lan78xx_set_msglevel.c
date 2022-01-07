
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct lan78xx_net {int msg_enable; } ;


 struct lan78xx_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void lan78xx_set_msglevel(struct net_device *net, u32 level)
{
 struct lan78xx_net *dev = netdev_priv(net);

 dev->msg_enable = level;
}
