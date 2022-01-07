
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int rx_ring_num; int port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_6__ {int location; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; TYPE_3__ fs; int data; } ;
struct TYPE_4__ {scalar_t__ steering_mode; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;




 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int mlx4_en_get_flow (struct net_device*,struct ethtool_rxnfc*,int) ;
 int mlx4_en_get_num_flows (struct mlx4_en_priv*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
        u32 *rule_locs)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;
 int i = 0, priority = 0;

 if ((cmd->cmd == 130 ||
      cmd->cmd == 129 ||
      cmd->cmd == 131) &&
     (mdev->dev->caps.steering_mode !=
      MLX4_STEERING_MODE_DEVICE_MANAGED || !priv->port_up))
  return -EINVAL;

 switch (cmd->cmd) {
 case 128:
  cmd->data = priv->rx_ring_num;
  break;
 case 130:
  cmd->rule_cnt = mlx4_en_get_num_flows(priv);
  break;
 case 129:
  err = mlx4_en_get_flow(dev, cmd, cmd->fs.location);
  break;
 case 131:
  while ((!err || err == -ENOENT) && priority < cmd->rule_cnt) {
   err = mlx4_en_get_flow(dev, cmd, i);
   if (!err)
    rule_locs[priority++] = i;
   i++;
  }
  err = 0;
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
