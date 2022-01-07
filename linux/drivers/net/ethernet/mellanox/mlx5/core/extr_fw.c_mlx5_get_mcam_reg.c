
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mcam; } ;
struct mlx5_core_dev {TYPE_1__ caps; } ;


 int MLX5_MCAM_FEATURE_ENHANCED_FEATURES ;
 int MLX5_MCAM_REGS_FIRST_128 ;
 int mlx5_query_mcam_reg (struct mlx5_core_dev*,int ,int ,int ) ;

__attribute__((used)) static int mlx5_get_mcam_reg(struct mlx5_core_dev *dev)
{
 return mlx5_query_mcam_reg(dev, dev->caps.mcam,
       MLX5_MCAM_FEATURE_ENHANCED_FEATURES,
       MLX5_MCAM_REGS_FIRST_128);
}
