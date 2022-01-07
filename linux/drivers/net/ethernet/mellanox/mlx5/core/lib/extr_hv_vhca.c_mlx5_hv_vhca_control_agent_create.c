
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca_agent {int dummy; } ;
struct mlx5_hv_vhca {int dummy; } ;


 int MLX5_HV_VHCA_AGENT_CONTROL ;
 struct mlx5_hv_vhca_agent* mlx5_hv_vhca_agent_create (struct mlx5_hv_vhca*,int ,int *,int ,int *,int *) ;
 int mlx5_hv_vhca_control_agent_invalidate ;

__attribute__((used)) static struct mlx5_hv_vhca_agent *
mlx5_hv_vhca_control_agent_create(struct mlx5_hv_vhca *hv_vhca)
{
 return mlx5_hv_vhca_agent_create(hv_vhca, MLX5_HV_VHCA_AGENT_CONTROL,
      ((void*)0),
      mlx5_hv_vhca_control_agent_invalidate,
      ((void*)0), ((void*)0));
}
