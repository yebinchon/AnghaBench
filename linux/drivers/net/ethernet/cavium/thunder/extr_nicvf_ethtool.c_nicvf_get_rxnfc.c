
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nicvf {int rx_queues; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int EOPNOTSUPP ;


 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_get_rss_hash_opts (struct nicvf*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int nicvf_get_rxnfc(struct net_device *dev,
      struct ethtool_rxnfc *info, u32 *rules)
{
 struct nicvf *nic = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (info->cmd) {
 case 128:
  info->data = nic->rx_queues;
  ret = 0;
  break;
 case 129:
  return nicvf_get_rss_hash_opts(nic, info);
 default:
  break;
 }
 return ret;
}
