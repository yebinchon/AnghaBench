
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int dummy; } ;


 int __ice_set_coalesce (struct net_device*,struct ethtool_coalesce*,int) ;

__attribute__((used)) static int
ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec)
{
 return __ice_set_coalesce(netdev, ec, -1);
}
