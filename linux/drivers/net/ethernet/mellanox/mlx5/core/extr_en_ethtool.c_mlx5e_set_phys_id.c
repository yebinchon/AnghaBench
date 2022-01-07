
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EOPNOTSUPP ;


 int MLX5_BEACON_DURATION_INF ;
 int MLX5_BEACON_DURATION_OFF ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int beacon_led ;
 int mlx5_set_port_beacon (struct mlx5_core_dev*,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_set_phys_id(struct net_device *dev,
        enum ethtool_phys_id_state state)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5_core_dev *mdev = priv->mdev;
 u16 beacon_duration;

 if (!MLX5_CAP_GEN(mdev, beacon_led))
  return -EOPNOTSUPP;

 switch (state) {
 case 129:
  beacon_duration = MLX5_BEACON_DURATION_INF;
  break;
 case 128:
  beacon_duration = MLX5_BEACON_DURATION_OFF;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return mlx5_set_port_beacon(mdev, beacon_duration);
}
