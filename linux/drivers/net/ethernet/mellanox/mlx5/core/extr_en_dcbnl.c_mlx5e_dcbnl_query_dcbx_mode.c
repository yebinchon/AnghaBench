
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int mdev; } ;
typedef enum mlx5_dcbx_oper_mode { ____Placeholder_mlx5_dcbx_oper_mode } mlx5_dcbx_oper_mode ;


 int MLX5E_DCBX_PARAM_VER_OPER_AUTO ;
 int MLX5E_DCBX_PARAM_VER_OPER_HOST ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int dcbx_param ;
 int mlx5_query_port_dcbx_param (int ,int *) ;
 int version_oper ;

__attribute__((used)) static void mlx5e_dcbnl_query_dcbx_mode(struct mlx5e_priv *priv,
     enum mlx5_dcbx_oper_mode *mode)
{
 u32 out[MLX5_ST_SZ_DW(dcbx_param)];

 *mode = MLX5E_DCBX_PARAM_VER_OPER_HOST;

 if (!mlx5_query_port_dcbx_param(priv->mdev, out))
  *mode = MLX5_GET(dcbx_param, out, version_oper);




 if (*mode != MLX5E_DCBX_PARAM_VER_OPER_HOST)
  *mode = MLX5E_DCBX_PARAM_VER_OPER_AUTO;
}
