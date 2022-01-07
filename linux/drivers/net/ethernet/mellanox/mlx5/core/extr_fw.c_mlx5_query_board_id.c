
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int board_id; } ;
struct TYPE_2__ {int vsd_contd_psid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mlx5_cmd_query_adapter (struct mlx5_core_dev*,int *,int) ;
 int query_adapter_out ;
 TYPE_1__ query_adapter_struct ;

int mlx5_query_board_id(struct mlx5_core_dev *dev)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_adapter_out);
 int err;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_cmd_query_adapter(dev, out, outlen);
 if (err)
  goto out;

 memcpy(dev->board_id,
        MLX5_ADDR_OF(query_adapter_out, out,
       query_adapter_struct.vsd_contd_psid),
        MLX5_FLD_SZ_BYTES(query_adapter_out,
     query_adapter_struct.vsd_contd_psid));

out:
 kfree(out);
 return err;
}
