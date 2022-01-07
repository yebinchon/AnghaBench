
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int netdev_registered; int ndev; } ;


 int register_netdev (int ) ;

__attribute__((used)) static int netcp_register_interface(struct netcp_intf *netcp)
{
 int ret;

 ret = register_netdev(netcp->ndev);
 if (!ret)
  netcp->netdev_registered = 1;
 return ret;
}
