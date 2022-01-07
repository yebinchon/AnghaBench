
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int params; } ;
struct mlx5e_priv {TYPE_1__ channels; int state; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channels {int params; } ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 int MLX5E_PFLAG_XDP_TX_MPWQE ;
 int MLX5E_SET_PFLAG (int *,int ,int) ;
 int MLX5E_STATE_OPENED ;
 int MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int enhanced_multi_pkt_send_wqe ;
 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_pflag_xdp_tx_mpwqe(struct net_device *netdev, bool enable)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_channels new_channels = {};
 int err;

 if (enable && !MLX5_CAP_ETH(mdev, enhanced_multi_pkt_send_wqe))
  return -EOPNOTSUPP;

 new_channels.params = priv->channels.params;

 MLX5E_SET_PFLAG(&new_channels.params, MLX5E_PFLAG_XDP_TX_MPWQE, enable);

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state)) {
  priv->channels.params = new_channels.params;
  return 0;
 }

 err = mlx5e_safe_switch_channels(priv, &new_channels, ((void*)0));
 return err;
}
