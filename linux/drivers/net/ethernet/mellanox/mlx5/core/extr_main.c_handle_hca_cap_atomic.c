
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS ;
 int MLX5_CAP_ATOMIC (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_SET_HCA_CAP_OP_MOD_ATOMIC ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int atomic ;
 int atomic_caps ;
 int atomic_req_8B_endianness_mode ;
 int capability ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int mlx5_core_get_caps (struct mlx5_core_dev*,int (*) (struct mlx5_core_dev*,int )) ;
 int set_caps (struct mlx5_core_dev*,void*,int,int ) ;
 int set_hca_cap_in ;
 int supported_atomic_req_8B_endianness_mode_1 ;

__attribute__((used)) static int handle_hca_cap_atomic(struct mlx5_core_dev *dev)
{
 void *set_ctx;
 void *set_hca_cap;
 int set_sz = MLX5_ST_SZ_BYTES(set_hca_cap_in);
 int req_endianness;
 int err;

 if (MLX5_CAP_GEN(dev, atomic)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ATOMIC);
  if (err)
   return err;
 } else {
  return 0;
 }

 req_endianness =
  MLX5_CAP_ATOMIC(dev,
    supported_atomic_req_8B_endianness_mode_1);

 if (req_endianness != MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS)
  return 0;

 set_ctx = kzalloc(set_sz, GFP_KERNEL);
 if (!set_ctx)
  return -ENOMEM;

 set_hca_cap = MLX5_ADDR_OF(set_hca_cap_in, set_ctx, capability);


 MLX5_SET(atomic_caps, set_hca_cap, atomic_req_8B_endianness_mode,
   MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS);

 err = set_caps(dev, set_ctx, set_sz, MLX5_SET_HCA_CAP_OP_MOD_ATOMIC);

 kfree(set_ctx);
 return err;
}
