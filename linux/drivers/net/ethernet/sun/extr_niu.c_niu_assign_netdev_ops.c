
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;


 int NIU_TX_TIMEOUT ;
 int niu_ethtool_ops ;
 int niu_netdev_ops ;

__attribute__((used)) static void niu_assign_netdev_ops(struct net_device *dev)
{
 dev->netdev_ops = &niu_netdev_ops;
 dev->ethtool_ops = &niu_ethtool_ops;
 dev->watchdog_timeo = NIU_TX_TIMEOUT;
}
