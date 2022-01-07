
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca_control_block {int control; } ;
struct mlx5_hv_vhca_agent {int (* control ) (struct mlx5_hv_vhca_agent*,struct mlx5_hv_vhca_control_block*) ;int type; } ;
struct mlx5_hv_vhca {struct mlx5_hv_vhca_agent** agents; } ;


 int AGENT_MASK (int ) ;
 int MLX5_HV_VHCA_AGENT_MAX ;
 int stub1 (struct mlx5_hv_vhca_agent*,struct mlx5_hv_vhca_control_block*) ;

__attribute__((used)) static void mlx5_hv_vhca_agents_control(struct mlx5_hv_vhca *hv_vhca,
     struct mlx5_hv_vhca_control_block *block)
{
 int i;

 for (i = 0; i < MLX5_HV_VHCA_AGENT_MAX; i++) {
  struct mlx5_hv_vhca_agent *agent = hv_vhca->agents[i];

  if (!agent || !agent->control)
   continue;

  if (!(AGENT_MASK(agent->type) & block->control))
   continue;

  agent->control(agent, block);
 }
}
