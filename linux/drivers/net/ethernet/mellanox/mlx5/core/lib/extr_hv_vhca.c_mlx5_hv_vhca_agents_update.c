
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca {int dummy; } ;


 int BIT (int ) ;
 int MLX5_HV_VHCA_AGENT_CONTROL ;
 int mlx5_hv_vhca_invalidate (struct mlx5_hv_vhca*,int ) ;

__attribute__((used)) static void mlx5_hv_vhca_agents_update(struct mlx5_hv_vhca *hv_vhca)
{
 mlx5_hv_vhca_invalidate(hv_vhca, BIT(MLX5_HV_VHCA_AGENT_CONTROL));
}
