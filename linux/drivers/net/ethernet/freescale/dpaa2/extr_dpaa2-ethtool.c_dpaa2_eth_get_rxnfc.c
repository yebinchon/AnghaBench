
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int location; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; TYPE_1__ fs; } ;
struct dpaa2_eth_priv {int rx_hash_fields; TYPE_2__* cls_rules; } ;
struct TYPE_4__ {int in_use; TYPE_1__ fs; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int EOPNOTSUPP ;





 int array_index_nospec (int,int) ;
 int dpaa2_eth_fs_count (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_queue_count (struct dpaa2_eth_priv*) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int num_rules (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int dpaa2_eth_get_rxnfc(struct net_device *net_dev,
          struct ethtool_rxnfc *rxnfc, u32 *rule_locs)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 int max_rules = dpaa2_eth_fs_count(priv);
 int i, j = 0;

 switch (rxnfc->cmd) {
 case 129:




  rxnfc->data = priv->rx_hash_fields;
  break;
 case 128:
  rxnfc->data = dpaa2_eth_queue_count(priv);
  break;
 case 131:
  rxnfc->rule_cnt = 0;
  rxnfc->rule_cnt = num_rules(priv);
  rxnfc->data = max_rules;
  break;
 case 130:
  if (rxnfc->fs.location >= max_rules)
   return -EINVAL;
  rxnfc->fs.location = array_index_nospec(rxnfc->fs.location,
       max_rules);
  if (!priv->cls_rules[rxnfc->fs.location].in_use)
   return -EINVAL;
  rxnfc->fs = priv->cls_rules[rxnfc->fs.location].fs;
  break;
 case 132:
  for (i = 0; i < max_rules; i++) {
   if (!priv->cls_rules[i].in_use)
    continue;
   if (j == rxnfc->rule_cnt)
    return -EMSGSIZE;
   rule_locs[j++] = i;
  }
  rxnfc->rule_cnt = j;
  rxnfc->data = max_rules;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
