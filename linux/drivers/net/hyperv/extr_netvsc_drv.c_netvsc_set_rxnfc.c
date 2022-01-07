
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {scalar_t__ cmd; } ;


 int EOPNOTSUPP ;
 scalar_t__ ETHTOOL_SRXFH ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_set_rss_hash_opts (struct net_device_context*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int
netvsc_set_rxnfc(struct net_device *ndev, struct ethtool_rxnfc *info)
{
 struct net_device_context *ndc = netdev_priv(ndev);

 if (info->cmd == ETHTOOL_SRXFH)
  return netvsc_set_rss_hash_opts(ndc, info);

 return -EOPNOTSUPP;
}
