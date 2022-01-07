
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netcp_intf {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct netcp_intf* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 keystone_get_msglevel(struct net_device *ndev)
{
 struct netcp_intf *netcp = netdev_priv(ndev);

 return netcp->msg_enable;
}
