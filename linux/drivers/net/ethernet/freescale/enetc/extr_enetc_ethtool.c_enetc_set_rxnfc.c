
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_6__ {size_t location; int ring_cookie; } ;
struct ethtool_rxnfc {int cmd; TYPE_3__ fs; } ;
struct enetc_ndev_priv {TYPE_1__* cls_rules; TYPE_2__* si; int num_rx_rings; } ;
struct TYPE_5__ {size_t num_fs_entries; } ;
struct TYPE_4__ {int used; TYPE_3__ fs; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int RX_CLS_FLOW_DISC ;
 int enetc_set_cls_entry (TYPE_2__*,TYPE_3__*,int) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_set_rxnfc(struct net_device *ndev, struct ethtool_rxnfc *rxnfc)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 int err;

 switch (rxnfc->cmd) {
 case 128:
  if (rxnfc->fs.location >= priv->si->num_fs_entries)
   return -EINVAL;

  if (rxnfc->fs.ring_cookie >= priv->num_rx_rings &&
      rxnfc->fs.ring_cookie != RX_CLS_FLOW_DISC)
   return -EINVAL;

  err = enetc_set_cls_entry(priv->si, &rxnfc->fs, 1);
  if (err)
   return err;
  priv->cls_rules[rxnfc->fs.location].fs = rxnfc->fs;
  priv->cls_rules[rxnfc->fs.location].used = 1;
  break;
 case 129:
  if (rxnfc->fs.location >= priv->si->num_fs_entries)
   return -EINVAL;

  err = enetc_set_cls_entry(priv->si, &rxnfc->fs, 0);
  if (err)
   return err;
  priv->cls_rules[rxnfc->fs.location].used = 0;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
