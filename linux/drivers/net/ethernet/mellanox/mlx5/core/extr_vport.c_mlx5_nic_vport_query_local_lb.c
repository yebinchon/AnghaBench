
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int disable_uc_local_lb; int disable_mc_local_lb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MC_LOCAL_LB ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int UC_LOCAL_LB ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_nic_vport_query_local_lb(struct mlx5_core_dev *mdev, bool *status)
{
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);
 u32 *out;
 int value;
 int err;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_query_nic_vport_context(mdev, 0, out, outlen);
 if (err)
  goto out;

 value = MLX5_GET(query_nic_vport_context_out, out,
    nic_vport_context.disable_mc_local_lb) << MC_LOCAL_LB;

 value |= MLX5_GET(query_nic_vport_context_out, out,
     nic_vport_context.disable_uc_local_lb) << UC_LOCAL_LB;

 *status = !value;

out:
 kfree(out);
 return err;
}
