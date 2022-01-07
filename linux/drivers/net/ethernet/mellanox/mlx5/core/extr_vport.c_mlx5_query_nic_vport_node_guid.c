
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int node_guid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_GET64 (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_query_nic_vport_node_guid(struct mlx5_core_dev *mdev, u64 *node_guid)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);

 out = kvzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 mlx5_query_nic_vport_context(mdev, 0, out, outlen);

 *node_guid = MLX5_GET64(query_nic_vport_context_out, out,
    nic_vport_context.node_guid);

 kvfree(out);

 return 0;
}
