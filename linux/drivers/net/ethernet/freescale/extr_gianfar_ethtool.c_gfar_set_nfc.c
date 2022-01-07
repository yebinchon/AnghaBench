
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gfar_private {int rx_queue_access; int num_rx_queues; int state; } ;
struct TYPE_2__ {int location; int ring_cookie; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;


 int EBUSY ;
 int EINVAL ;



 int GFAR_RESETTING ;
 int MAX_FILER_IDX ;
 int RX_CLS_FLOW_DISC ;
 int gfar_add_cls (struct gfar_private*,TYPE_1__*) ;
 int gfar_del_cls (struct gfar_private*,int ) ;
 int gfar_set_hash_opts (struct gfar_private*,struct ethtool_rxnfc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gfar_set_nfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct gfar_private *priv = netdev_priv(dev);
 int ret = 0;

 if (test_bit(GFAR_RESETTING, &priv->state))
  return -EBUSY;

 mutex_lock(&priv->rx_queue_access);

 switch (cmd->cmd) {
 case 128:
  ret = gfar_set_hash_opts(priv, cmd);
  break;
 case 129:
  if ((cmd->fs.ring_cookie != RX_CLS_FLOW_DISC &&
       cmd->fs.ring_cookie >= priv->num_rx_queues) ||
      cmd->fs.location >= MAX_FILER_IDX) {
   ret = -EINVAL;
   break;
  }
  ret = gfar_add_cls(priv, &cmd->fs);
  break;
 case 130:
  ret = gfar_del_cls(priv, cmd->fs.location);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&priv->rx_queue_access);

 return ret;
}
