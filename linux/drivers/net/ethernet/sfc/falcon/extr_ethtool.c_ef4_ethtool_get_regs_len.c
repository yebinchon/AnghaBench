
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ef4_nic_get_regs_len (int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int ef4_ethtool_get_regs_len(struct net_device *net_dev)
{
 return ef4_nic_get_regs_len(netdev_priv(net_dev));
}
