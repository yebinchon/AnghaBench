
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reoffload_flows_work; } ;
struct mlx5e_rep_priv {TYPE_1__ uplink_priv; } ;
struct mlx5e_priv {int events_nb; struct mlx5e_rep_priv* ppriv; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 int mlx5_lag_remove (struct mlx5_core_dev*) ;
 int mlx5_notifier_unregister (struct mlx5_core_dev*,int *) ;
 int mlx5e_dcbnl_delete_app (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_uplink_rep_disable(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_rep_priv *rpriv = priv->ppriv;




 mlx5_notifier_unregister(mdev, &priv->events_nb);
 cancel_work_sync(&rpriv->uplink_priv.reoffload_flows_work);
 mlx5_lag_remove(mdev);
}
