
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int ieee_vendor_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mlx5_cmd_query_adapter (struct mlx5_core_dev*,int *,int) ;
 int query_adapter_out ;
 TYPE_1__ query_adapter_struct ;

int mlx5_core_query_vendor_id(struct mlx5_core_dev *mdev, u32 *vendor_id)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_adapter_out);
 int err;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_cmd_query_adapter(mdev, out, outlen);
 if (err)
  goto out;

 *vendor_id = MLX5_GET(query_adapter_out, out,
         query_adapter_struct.ieee_vendor_id);
out:
 kfree(out);
 return err;
}
