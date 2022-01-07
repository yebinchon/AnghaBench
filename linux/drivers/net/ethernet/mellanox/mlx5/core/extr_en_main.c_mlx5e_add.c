
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
typedef void mlx5_core_dev ;
struct TYPE_2__ {int eswitch; } ;


 scalar_t__ MLX5_ESWITCH_MANAGER (void*) ;
 scalar_t__ MLX5_ESWITCH_OFFLOADS ;
 int mlx5_core_err (void*,char*,...) ;
 scalar_t__ mlx5_eswitch_mode (int ) ;
 int mlx5e_attach (void*,void*) ;
 int mlx5e_check_required_hca_cap (void*) ;
 struct net_device* mlx5e_create_netdev (void*,int *,int,int *) ;
 int mlx5e_dcbnl_init_app (void*) ;
 int mlx5e_destroy_netdev (void*) ;
 int mlx5e_detach (void*,void*) ;
 int mlx5e_get_max_num_channels (void*) ;
 int mlx5e_nic_profile ;
 int mlx5e_rep_register_vport_reps (void*) ;
 void* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static void *mlx5e_add(struct mlx5_core_dev *mdev)
{
 struct net_device *netdev;
 void *priv;
 int err;
 int nch;

 err = mlx5e_check_required_hca_cap(mdev);
 if (err)
  return ((void*)0);
 nch = mlx5e_get_max_num_channels(mdev);
 netdev = mlx5e_create_netdev(mdev, &mlx5e_nic_profile, nch, ((void*)0));
 if (!netdev) {
  mlx5_core_err(mdev, "mlx5e_create_netdev failed\n");
  return ((void*)0);
 }

 priv = netdev_priv(netdev);

 err = mlx5e_attach(mdev, priv);
 if (err) {
  mlx5_core_err(mdev, "mlx5e_attach failed, %d\n", err);
  goto err_destroy_netdev;
 }

 err = register_netdev(netdev);
 if (err) {
  mlx5_core_err(mdev, "register_netdev failed, %d\n", err);
  goto err_detach;
 }




 return priv;

err_detach:
 mlx5e_detach(mdev, priv);
err_destroy_netdev:
 mlx5e_destroy_netdev(priv);
 return ((void*)0);
}
