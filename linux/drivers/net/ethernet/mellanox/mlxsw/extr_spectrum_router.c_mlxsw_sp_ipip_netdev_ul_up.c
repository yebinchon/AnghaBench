
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;


 int IFF_UP ;
 struct net_device* __mlxsw_sp_ipip_netdev_ul_dev_get (struct net_device*) ;

__attribute__((used)) static bool mlxsw_sp_ipip_netdev_ul_up(struct net_device *ol_dev)
{
 struct net_device *ul_dev = __mlxsw_sp_ipip_netdev_ul_dev_get(ol_dev);

 return ul_dev ? (ul_dev->flags & IFF_UP) : 1;
}
