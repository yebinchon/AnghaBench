
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int qkey_violation_counter; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_query_nic_vport_qkey_viol_cntr(struct mlx5_core_dev *mdev,
     u16 *qkey_viol_cntr)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);

 out = kvzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 mlx5_query_nic_vport_context(mdev, 0, out, outlen);

 *qkey_viol_cntr = MLX5_GET(query_nic_vport_context_out, out,
       nic_vport_context.qkey_violation_counter);

 kvfree(out);

 return 0;
}
