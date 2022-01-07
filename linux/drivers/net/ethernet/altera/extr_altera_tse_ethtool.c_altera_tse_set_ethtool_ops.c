
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int tse_ethtool_ops ;

void altera_tse_set_ethtool_ops(struct net_device *netdev)
{
 netdev->ethtool_ops = &tse_ethtool_ops;
}
