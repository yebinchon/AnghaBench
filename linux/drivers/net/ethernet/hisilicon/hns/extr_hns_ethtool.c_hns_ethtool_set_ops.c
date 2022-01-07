
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int hns_ethtool_ops ;

void hns_ethtool_set_ops(struct net_device *ndev)
{
 ndev->ethtool_ops = &hns_ethtool_ops;
}
