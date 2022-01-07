
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_params {int lro_timeout; int lro_en; } ;


 int MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_TIRC_LRO_ENABLE_MASK_IPV4_LRO ;
 int MLX5_TIRC_LRO_ENABLE_MASK_IPV6_LRO ;
 int ROUGH_MAX_L2_L3_HDR_SZ ;
 int lro_enable_mask ;
 int lro_max_ip_payload_size ;
 int lro_timeout_period_usecs ;

__attribute__((used)) static void mlx5e_build_tir_ctx_lro(struct mlx5e_params *params, void *tirc)
{
 if (!params->lro_en)
  return;



 MLX5_SET(tirc, tirc, lro_enable_mask,
   MLX5_TIRC_LRO_ENABLE_MASK_IPV4_LRO |
   MLX5_TIRC_LRO_ENABLE_MASK_IPV6_LRO);
 MLX5_SET(tirc, tirc, lro_max_ip_payload_size,
   (MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ - 256) >> 8);
 MLX5_SET(tirc, tirc, lro_timeout_period_usecs, params->lro_timeout);
}
