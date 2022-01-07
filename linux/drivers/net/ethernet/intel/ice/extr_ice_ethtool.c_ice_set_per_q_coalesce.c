
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int dummy; } ;


 int __ice_set_coalesce (struct net_device*,struct ethtool_coalesce*,int ) ;

__attribute__((used)) static int
ice_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
         struct ethtool_coalesce *ec)
{
 return __ice_set_coalesce(netdev, ec, q_num);
}
