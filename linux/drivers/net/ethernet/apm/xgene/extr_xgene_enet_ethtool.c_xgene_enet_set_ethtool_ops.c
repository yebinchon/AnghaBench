
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int xgene_ethtool_ops ;

void xgene_enet_set_ethtool_ops(struct net_device *ndev)
{
 ndev->ethtool_ops = &xgene_ethtool_ops;
}
