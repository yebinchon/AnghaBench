
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_create_tises (struct mlx5e_priv*) ;
 int mlx5e_dcbnl_initialize (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5e_init_nic_tx(struct mlx5e_priv *priv)
{
 int err;

 err = mlx5e_create_tises(priv);
 if (err) {
  mlx5_core_warn(priv->mdev, "create tises failed, %d\n", err);
  return err;
 }




 return 0;
}
