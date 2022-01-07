
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_set_rss_hash_opts (struct nicvf*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int nicvf_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info)
{
 struct nicvf *nic = netdev_priv(dev);

 switch (info->cmd) {
 case 128:
  return nicvf_set_rss_hash_opts(nic, info);
 default:
  break;
 }
 return -EOPNOTSUPP;
}
