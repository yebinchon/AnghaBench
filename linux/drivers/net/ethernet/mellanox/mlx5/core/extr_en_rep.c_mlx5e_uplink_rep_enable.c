
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int max_mtu; int min_mtu; } ;
struct TYPE_5__ {int reoffload_flows_work; } ;
struct mlx5e_rep_priv {TYPE_2__ uplink_priv; } ;
struct TYPE_6__ {int notifier_call; } ;
struct TYPE_4__ {int params; } ;
struct mlx5e_priv {TYPE_3__ events_nb; TYPE_1__ channels; struct mlx5_core_dev* mdev; struct mlx5e_rep_priv* ppriv; struct net_device* netdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ETH_MIN_MTU ;
 int INIT_WORK (int *,int ) ;
 int MLX5E_HW2SW_MTU (int *,int ) ;
 int mlx5_lag_add (struct mlx5_core_dev*,struct net_device*) ;
 int mlx5_notifier_register (struct mlx5_core_dev*,TYPE_3__*) ;
 int mlx5_query_port_max_mtu (struct mlx5_core_dev*,int *,int) ;
 int mlx5e_dcbnl_init_app (struct mlx5e_priv*) ;
 int mlx5e_dcbnl_initialize (struct mlx5e_priv*) ;
 int mlx5e_set_dev_port_mtu (struct mlx5e_priv*) ;
 int mlx5e_tc_reoffload_flows_work ;
 int uplink_rep_async_event ;

__attribute__((used)) static void mlx5e_uplink_rep_enable(struct mlx5e_priv *priv)
{
 struct net_device *netdev = priv->netdev;
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 u16 max_mtu;

 netdev->min_mtu = ETH_MIN_MTU;
 mlx5_query_port_max_mtu(priv->mdev, &max_mtu, 1);
 netdev->max_mtu = MLX5E_HW2SW_MTU(&priv->channels.params, max_mtu);
 mlx5e_set_dev_port_mtu(priv);

 INIT_WORK(&rpriv->uplink_priv.reoffload_flows_work,
    mlx5e_tc_reoffload_flows_work);

 mlx5_lag_add(mdev, netdev);
 priv->events_nb.notifier_call = uplink_rep_async_event;
 mlx5_notifier_register(mdev, &priv->events_nb);




}
