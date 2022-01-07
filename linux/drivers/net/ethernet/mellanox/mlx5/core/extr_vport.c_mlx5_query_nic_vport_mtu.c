
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int mtu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_query_nic_vport_mtu(struct mlx5_core_dev *mdev, u16 *mtu)
{
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);
 u32 *out;
 int err;

 out = kvzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_query_nic_vport_context(mdev, 0, out, outlen);
 if (!err)
  *mtu = MLX5_GET(query_nic_vport_context_out, out,
    nic_vport_context.mtu);

 kvfree(out);
 return err;
}
