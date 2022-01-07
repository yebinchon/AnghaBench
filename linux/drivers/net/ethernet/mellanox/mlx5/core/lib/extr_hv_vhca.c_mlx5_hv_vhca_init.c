
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca_agent {struct mlx5_hv_vhca_agent** agents; int dev; } ;
struct mlx5_hv_vhca {struct mlx5_hv_vhca** agents; int dev; } ;


 int IS_ERR_OR_NULL (struct mlx5_hv_vhca_agent*) ;
 size_t MLX5_HV_VHCA_AGENT_CONTROL ;
 int mlx5_hv_register_invalidate (int ,struct mlx5_hv_vhca_agent*,int ) ;
 int mlx5_hv_unregister_invalidate (int ) ;
 struct mlx5_hv_vhca_agent* mlx5_hv_vhca_control_agent_create (struct mlx5_hv_vhca_agent*) ;
 int mlx5_hv_vhca_invalidate ;

int mlx5_hv_vhca_init(struct mlx5_hv_vhca *hv_vhca)
{
 struct mlx5_hv_vhca_agent *agent;
 int err;

 if (IS_ERR_OR_NULL(hv_vhca))
  return IS_ERR_OR_NULL(hv_vhca);

 err = mlx5_hv_register_invalidate(hv_vhca->dev, hv_vhca,
       mlx5_hv_vhca_invalidate);
 if (err)
  return err;

 agent = mlx5_hv_vhca_control_agent_create(hv_vhca);
 if (IS_ERR_OR_NULL(agent)) {
  mlx5_hv_unregister_invalidate(hv_vhca->dev);
  return IS_ERR_OR_NULL(agent);
 }

 hv_vhca->agents[MLX5_HV_VHCA_AGENT_CONTROL] = agent;

 return 0;
}
