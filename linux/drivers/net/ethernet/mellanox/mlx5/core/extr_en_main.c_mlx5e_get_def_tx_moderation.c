
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dim_cq_moder {int usec; int pkts; scalar_t__ cq_period_mode; } ;


 int MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS ;
 int MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC ;
 int MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC_FROM_CQE ;
 scalar_t__ MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;

__attribute__((used)) static struct dim_cq_moder mlx5e_get_def_tx_moderation(u8 cq_period_mode)
{
 struct dim_cq_moder moder;

 moder.cq_period_mode = cq_period_mode;
 moder.pkts = MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS;
 moder.usec = MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC;
 if (cq_period_mode == MLX5_CQ_PERIOD_MODE_START_FROM_CQE)
  moder.usec = MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC_FROM_CQE;

 return moder;
}
