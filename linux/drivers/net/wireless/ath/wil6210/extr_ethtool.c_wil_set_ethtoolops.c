
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int wil_ethtool_ops ;

void wil_set_ethtoolops(struct net_device *ndev)
{
 ndev->ethtool_ops = &wil_ethtool_ops;
}
