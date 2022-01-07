
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_hv_vhca_agent {int type; } ;
struct mlx5_hv_vhca {struct mlx5_hv_vhca_agent** agents; } ;


 int AGENT_MASK (int ) ;
 int MLX5_HV_VHCA_AGENT_MAX ;

__attribute__((used)) static void mlx5_hv_vhca_capabilities(struct mlx5_hv_vhca *hv_vhca,
          u32 *capabilities)
{
 int i;

 for (i = 0; i < MLX5_HV_VHCA_AGENT_MAX; i++) {
  struct mlx5_hv_vhca_agent *agent = hv_vhca->agents[i];

  if (agent)
   *capabilities |= AGENT_MASK(agent->type);
 }
}
