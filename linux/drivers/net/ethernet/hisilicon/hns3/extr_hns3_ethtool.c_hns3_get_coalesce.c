
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int dummy; } ;


 int hns3_get_coalesce_per_queue (struct net_device*,int ,struct ethtool_coalesce*) ;

__attribute__((used)) static int hns3_get_coalesce(struct net_device *netdev,
        struct ethtool_coalesce *cmd)
{
 return hns3_get_coalesce_per_queue(netdev, 0, cmd);
}
