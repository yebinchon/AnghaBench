
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_rx_flow_spec {int dummy; } ;
struct dpaa2_eth_priv {scalar_t__ rx_cls_fields; struct dpaa2_eth_cls_rule* cls_rules; int rx_cls_enabled; } ;
struct dpaa2_eth_cls_rule {int in_use; struct ethtool_rx_flow_spec fs; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int do_cls_rule (struct net_device*,struct ethtool_rx_flow_spec*,int) ;
 int dpaa2_eth_fs_count (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_fs_mask_enabled (struct dpaa2_eth_priv*) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int num_rules (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int update_cls_rule(struct net_device *net_dev,
      struct ethtool_rx_flow_spec *new_fs,
      int location)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 struct dpaa2_eth_cls_rule *rule;
 int err = -EINVAL;

 if (!priv->rx_cls_enabled)
  return -EOPNOTSUPP;

 if (location >= dpaa2_eth_fs_count(priv))
  return -EINVAL;

 rule = &priv->cls_rules[location];


 if (rule->in_use) {
  err = do_cls_rule(net_dev, &rule->fs, 0);
  if (err)
   return err;

  rule->in_use = 0;

  if (!dpaa2_eth_fs_mask_enabled(priv) && !num_rules(priv))
   priv->rx_cls_fields = 0;
 }


 if (!new_fs)
  return err;

 err = do_cls_rule(net_dev, new_fs, 1);
 if (err)
  return err;

 rule->in_use = 1;
 rule->fs = *new_fs;

 return 0;
}
