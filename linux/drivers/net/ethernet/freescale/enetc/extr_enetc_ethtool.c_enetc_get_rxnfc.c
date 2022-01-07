
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {size_t location; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; TYPE_1__ fs; } ;
struct enetc_ndev_priv {int num_rx_rings; TYPE_3__* cls_rules; TYPE_2__* si; } ;
struct TYPE_6__ {int used; TYPE_1__ fs; } ;
struct TYPE_5__ {int num_fs_entries; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int EOPNOTSUPP ;





 int enetc_get_rsshash (struct ethtool_rxnfc*) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_get_rxnfc(struct net_device *ndev, struct ethtool_rxnfc *rxnfc,
      u32 *rule_locs)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 int i, j;

 switch (rxnfc->cmd) {
 case 128:
  rxnfc->data = priv->num_rx_rings;
  break;
 case 129:

  return enetc_get_rsshash(rxnfc);
 case 131:

  rxnfc->data = priv->si->num_fs_entries;

  rxnfc->rule_cnt = 0;
  for (i = 0; i < priv->si->num_fs_entries; i++)
   if (priv->cls_rules[i].used)
    rxnfc->rule_cnt++;
  break;
 case 130:
  if (rxnfc->fs.location >= priv->si->num_fs_entries)
   return -EINVAL;


  rxnfc->fs = priv->cls_rules[rxnfc->fs.location].fs;
  break;
 case 132:

  rxnfc->data = priv->si->num_fs_entries;

  j = 0;
  for (i = 0; i < priv->si->num_fs_entries; i++) {
   if (!priv->cls_rules[i].used)
    continue;
   if (j == rxnfc->rule_cnt)
    return -EMSGSIZE;
   rule_locs[j++] = i;
  }

  rxnfc->rule_cnt = j;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
