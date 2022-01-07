
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int dummy; } ;


 int __iavf_get_coalesce (struct net_device*,struct ethtool_coalesce*,int ) ;

__attribute__((used)) static int iavf_get_per_queue_coalesce(struct net_device *netdev, u32 queue,
           struct ethtool_coalesce *ec)
{
 return __iavf_get_coalesce(netdev, ec, queue);
}
