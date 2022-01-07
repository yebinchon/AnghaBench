
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int atl1c_ethtool_ops ;

void atl1c_set_ethtool_ops(struct net_device *netdev)
{
 netdev->ethtool_ops = &atl1c_ethtool_ops;
}
