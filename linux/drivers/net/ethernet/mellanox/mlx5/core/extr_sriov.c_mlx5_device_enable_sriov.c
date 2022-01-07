
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_sriov {TYPE_1__* vfs_ctx; } ;
struct TYPE_4__ {int eswitch; struct mlx5_core_sriov sriov; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {int enabled; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ;
 int MLX5_ESWITCH_LEGACY ;
 int MLX5_ESWITCH_MANAGER (struct mlx5_core_dev*) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int) ;
 int mlx5_core_enable_hca (struct mlx5_core_dev*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int,...) ;
 int mlx5_eswitch_enable (int ,int ) ;
 int mlx5_eswitch_update_num_of_vfs (int ,int) ;
 int port_type ;
 int sriov_restore_guids (struct mlx5_core_dev*,int) ;

__attribute__((used)) static int mlx5_device_enable_sriov(struct mlx5_core_dev *dev, int num_vfs)
{
 struct mlx5_core_sriov *sriov = &dev->priv.sriov;
 int err;
 int vf;

 if (!MLX5_ESWITCH_MANAGER(dev))
  goto enable_vfs_hca;

 mlx5_eswitch_update_num_of_vfs(dev->priv.eswitch, num_vfs);
 err = mlx5_eswitch_enable(dev->priv.eswitch, MLX5_ESWITCH_LEGACY);
 if (err) {
  mlx5_core_warn(dev,
          "failed to enable eswitch SRIOV (%d)\n", err);
  return err;
 }

enable_vfs_hca:
 for (vf = 0; vf < num_vfs; vf++) {
  err = mlx5_core_enable_hca(dev, vf + 1);
  if (err) {
   mlx5_core_warn(dev, "failed to enable VF %d (%d)\n", vf, err);
   continue;
  }
  sriov->vfs_ctx[vf].enabled = 1;
  if (MLX5_CAP_GEN(dev, port_type) == MLX5_CAP_PORT_TYPE_IB) {
   err = sriov_restore_guids(dev, vf);
   if (err) {
    mlx5_core_warn(dev,
            "failed to restore VF %d settings, err %d\n",
            vf, err);
    continue;
   }
  }
  mlx5_core_dbg(dev, "successfully enabled VF* %d\n", vf);
 }

 return 0;
}
