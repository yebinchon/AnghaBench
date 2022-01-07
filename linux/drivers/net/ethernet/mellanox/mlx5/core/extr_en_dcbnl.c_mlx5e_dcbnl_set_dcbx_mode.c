
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_dcbx_oper_mode { ____Placeholder_mlx5_dcbx_oper_mode } mlx5_dcbx_oper_mode ;


 int MLX5E_DCBX_PARAM_VER_OPER_HOST ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int dcbx_param ;
 int mlx5_query_port_dcbx_param (struct mlx5_core_dev*,int *) ;
 int mlx5_set_port_dcbx_param (struct mlx5_core_dev*,int *) ;
 int version_admin ;
 int willing_admin ;

__attribute__((used)) static int mlx5e_dcbnl_set_dcbx_mode(struct mlx5e_priv *priv,
         enum mlx5_dcbx_oper_mode mode)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 u32 param[MLX5_ST_SZ_DW(dcbx_param)];
 int err;

 err = mlx5_query_port_dcbx_param(mdev, param);
 if (err)
  return err;

 MLX5_SET(dcbx_param, param, version_admin, mode);
 if (mode != MLX5E_DCBX_PARAM_VER_OPER_HOST)
  MLX5_SET(dcbx_param, param, willing_admin, 1);

 return mlx5_set_port_dcbx_param(mdev, param);
}
