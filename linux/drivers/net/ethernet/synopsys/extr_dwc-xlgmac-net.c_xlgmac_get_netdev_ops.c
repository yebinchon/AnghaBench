
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int dummy; } ;


 struct net_device_ops const xlgmac_netdev_ops ;

const struct net_device_ops *xlgmac_get_netdev_ops(void)
{
 return &xlgmac_netdev_ops;
}
