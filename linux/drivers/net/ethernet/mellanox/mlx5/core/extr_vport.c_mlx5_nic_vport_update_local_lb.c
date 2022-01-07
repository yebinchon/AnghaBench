
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int disable_uc_local_lb; int disable_mc_local_lb; } ;
struct TYPE_3__ {int disable_uc_local_lb; int disable_mc_local_lb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int disable_local_lb_mc ;
 int disable_local_lb_uc ;
 TYPE_2__ field_select ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,char*) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 int modify_nic_vport_context_in ;
 TYPE_1__ nic_vport_context ;

int mlx5_nic_vport_update_local_lb(struct mlx5_core_dev *mdev, bool enable)
{
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 void *in;
 int err;

 if (!MLX5_CAP_GEN(mdev, disable_local_lb_mc) &&
     !MLX5_CAP_GEN(mdev, disable_local_lb_uc))
  return 0;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_nic_vport_context_in, in,
   nic_vport_context.disable_mc_local_lb, !enable);
 MLX5_SET(modify_nic_vport_context_in, in,
   nic_vport_context.disable_uc_local_lb, !enable);

 if (MLX5_CAP_GEN(mdev, disable_local_lb_mc))
  MLX5_SET(modify_nic_vport_context_in, in,
    field_select.disable_mc_local_lb, 1);

 if (MLX5_CAP_GEN(mdev, disable_local_lb_uc))
  MLX5_SET(modify_nic_vport_context_in, in,
    field_select.disable_uc_local_lb, 1);

 err = mlx5_modify_nic_vport_context(mdev, in, inlen);

 if (!err)
  mlx5_core_dbg(mdev, "%s local_lb\n",
         enable ? "enable" : "disable");

 kvfree(in);
 return err;
}
