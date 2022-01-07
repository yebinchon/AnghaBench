
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5e_rq_param {int rqc; } ;
struct mlx5e_params {int rq_wq_type; } ;


 scalar_t__ MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE ;
 int MLX5E_UMR_WQEBBS ;

 scalar_t__ mlx5e_get_rq_log_wq_sz (int ) ;
 scalar_t__ order_base_2 (int ) ;

__attribute__((used)) static u8 mlx5e_build_icosq_log_wq_sz(struct mlx5e_params *params,
          struct mlx5e_rq_param *rqp)
{
 switch (params->rq_wq_type) {
 case 128:
  return order_base_2(MLX5E_UMR_WQEBBS) +
   mlx5e_get_rq_log_wq_sz(rqp->rqc);
 default:
  return MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE;
 }
}
