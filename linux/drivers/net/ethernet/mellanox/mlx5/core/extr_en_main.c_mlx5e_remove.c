
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int netdev; } ;
typedef void mlx5_core_dev ;


 scalar_t__ MLX5_ESWITCH_MANAGER (void*) ;
 int mlx5e_dcbnl_delete_app (struct mlx5e_priv*) ;
 int mlx5e_destroy_netdev (struct mlx5e_priv*) ;
 int mlx5e_detach (void*,void*) ;
 int mlx5e_rep_unregister_vport_reps (void*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void mlx5e_remove(struct mlx5_core_dev *mdev, void *vpriv)
{
 struct mlx5e_priv *priv;







 priv = vpriv;



 unregister_netdev(priv->netdev);
 mlx5e_detach(mdev, vpriv);
 mlx5e_destroy_netdev(priv);
}
