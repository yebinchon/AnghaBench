
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int * hca_cur; int * hca_max; } ;
struct mlx5_core_dev {TYPE_1__ caps; } ;
typedef int in ;
typedef enum mlx5_cap_type { ____Placeholder_mlx5_cap_type } mlx5_cap_type ;
typedef enum mlx5_cap_mode { ____Placeholder_mlx5_cap_mode } mlx5_cap_mode ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CMD_OP_QUERY_HCA_CAP ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int MLX5_UN_SZ_BYTES (int ) ;
 int capability ;
 int hca_cap_union ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,void*,int ) ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,void*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int,int,...) ;
 int op_mod ;
 int opcode ;
 int query_hca_cap_in ;
 int query_hca_cap_out ;

__attribute__((used)) static int mlx5_core_get_caps_mode(struct mlx5_core_dev *dev,
       enum mlx5_cap_type cap_type,
       enum mlx5_cap_mode cap_mode)
{
 u8 in[MLX5_ST_SZ_BYTES(query_hca_cap_in)];
 int out_sz = MLX5_ST_SZ_BYTES(query_hca_cap_out);
 void *out, *hca_caps;
 u16 opmod = (cap_type << 1) | (cap_mode & 0x01);
 int err;

 memset(in, 0, sizeof(in));
 out = kzalloc(out_sz, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 MLX5_SET(query_hca_cap_in, in, opcode, MLX5_CMD_OP_QUERY_HCA_CAP);
 MLX5_SET(query_hca_cap_in, in, op_mod, opmod);
 err = mlx5_cmd_exec(dev, in, sizeof(in), out, out_sz);
 if (err) {
  mlx5_core_warn(dev,
          "QUERY_HCA_CAP : type(%x) opmode(%x) Failed(%d)\n",
          cap_type, cap_mode, err);
  goto query_ex;
 }

 hca_caps = MLX5_ADDR_OF(query_hca_cap_out, out, capability);

 switch (cap_mode) {
 case 128:
  memcpy(dev->caps.hca_max[cap_type], hca_caps,
         MLX5_UN_SZ_BYTES(hca_cap_union));
  break;
 case 129:
  memcpy(dev->caps.hca_cur[cap_type], hca_caps,
         MLX5_UN_SZ_BYTES(hca_cap_union));
  break;
 default:
  mlx5_core_warn(dev,
          "Tried to query dev cap type(%x) with wrong opmode(%x)\n",
          cap_type, cap_mode);
  err = -EINVAL;
  break;
 }
query_ex:
 kfree(out);
 return err;
}
