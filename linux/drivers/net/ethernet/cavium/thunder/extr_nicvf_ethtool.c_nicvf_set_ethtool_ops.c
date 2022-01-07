
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int nicvf_ethtool_ops ;

void nicvf_set_ethtool_ops(struct net_device *netdev)
{
 netdev->ethtool_ops = &nicvf_ethtool_ops;
}
