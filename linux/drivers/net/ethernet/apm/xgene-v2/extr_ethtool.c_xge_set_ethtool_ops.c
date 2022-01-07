
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int xge_ethtool_ops ;

void xge_set_ethtool_ops(struct net_device *ndev)
{
 ndev->ethtool_ops = &xge_ethtool_ops;
}
