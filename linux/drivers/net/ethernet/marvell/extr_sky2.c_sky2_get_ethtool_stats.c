
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sky2_port {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int sky2_phy_stats (struct sky2_port*,int *,int ) ;
 int sky2_stats ;

__attribute__((used)) static void sky2_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *stats, u64 * data)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 sky2_phy_stats(sky2, data, ARRAY_SIZE(sky2_stats));
}
