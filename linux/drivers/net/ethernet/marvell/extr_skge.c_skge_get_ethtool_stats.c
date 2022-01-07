
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skge_port {int hw; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int genesis_get_stats (struct skge_port*,int *) ;
 scalar_t__ is_genesis (int ) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int yukon_get_stats (struct skge_port*,int *) ;

__attribute__((used)) static void skge_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *stats, u64 *data)
{
 struct skge_port *skge = netdev_priv(dev);

 if (is_genesis(skge->hw))
  genesis_get_stats(skge, data);
 else
  yukon_get_stats(skge, data);
}
