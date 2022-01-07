
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int count; } ;
struct gfar_private {TYPE_1__ rx_list; int num_rx_queues; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int EINVAL ;




 int gfar_get_cls (struct gfar_private*,struct ethtool_rxnfc*) ;
 int gfar_get_cls_all (struct gfar_private*,struct ethtool_rxnfc*,int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gfar_get_nfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
   u32 *rule_locs)
{
 struct gfar_private *priv = netdev_priv(dev);
 int ret = 0;

 switch (cmd->cmd) {
 case 128:
  cmd->data = priv->num_rx_queues;
  break;
 case 130:
  cmd->rule_cnt = priv->rx_list.count;
  break;
 case 129:
  ret = gfar_get_cls(priv, cmd);
  break;
 case 131:
  ret = gfar_get_cls_all(priv, cmd, rule_locs);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
