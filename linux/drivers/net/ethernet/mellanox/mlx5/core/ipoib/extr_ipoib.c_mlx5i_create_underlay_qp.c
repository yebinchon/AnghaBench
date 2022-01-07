
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u32 ;
struct mlx5_core_qp {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,void*) ;
 int MLX5_QP_ENHANCED_ULP_STATELESS_MODE ;
 int MLX5_QP_PM_MIGRATED ;
 int MLX5_QP_ST_UD ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 void* ads ;
 void* create_qp_in ;
 int grh ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_create_qp (struct mlx5_core_dev*,struct mlx5_core_qp*,void*,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int pm_state ;
 void* primary_address_path ;
 int st ;
 int ulp_stateless_offload_mode ;
 int vhca_port_num ;

int mlx5i_create_underlay_qp(struct mlx5_core_dev *mdev, struct mlx5_core_qp *qp)
{
 u32 *in = ((void*)0);
 void *addr_path;
 int ret = 0;
 int inlen;
 void *qpc;

 inlen = MLX5_ST_SZ_BYTES(create_qp_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 qpc = MLX5_ADDR_OF(create_qp_in, in, qpc);
 MLX5_SET(qpc, qpc, st, MLX5_QP_ST_UD);
 MLX5_SET(qpc, qpc, pm_state, MLX5_QP_PM_MIGRATED);
 MLX5_SET(qpc, qpc, ulp_stateless_offload_mode,
   MLX5_QP_ENHANCED_ULP_STATELESS_MODE);

 addr_path = MLX5_ADDR_OF(qpc, qpc, primary_address_path);
 MLX5_SET(ads, addr_path, vhca_port_num, 1);
 MLX5_SET(ads, addr_path, grh, 1);

 ret = mlx5_core_create_qp(mdev, qp, in, inlen);
 if (ret) {
  mlx5_core_err(mdev, "Failed creating IPoIB QP err : %d\n", ret);
  goto out;
 }

out:
 kvfree(in);
 return ret;
}
