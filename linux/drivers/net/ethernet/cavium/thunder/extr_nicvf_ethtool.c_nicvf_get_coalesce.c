
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int cq_coalesce_usecs; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;


 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nicvf_get_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *cmd)
{
 struct nicvf *nic = netdev_priv(netdev);

 cmd->rx_coalesce_usecs = nic->cq_coalesce_usecs;
 return 0;
}
