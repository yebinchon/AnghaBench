
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks_net {int msg_enable; } ;


 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ks_get_msglevel(struct net_device *netdev)
{
 struct ks_net *ks = netdev_priv(netdev);
 return ks->msg_enable;
}
