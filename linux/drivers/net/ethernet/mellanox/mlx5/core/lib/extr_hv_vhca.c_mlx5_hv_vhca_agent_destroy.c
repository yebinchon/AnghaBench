
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca_agent {size_t type; int (* cleanup ) (struct mlx5_hv_vhca_agent*) ;struct mlx5_hv_vhca* hv_vhca; } ;
struct mlx5_hv_vhca {int agents_lock; struct mlx5_hv_vhca_agent** agents; } ;


 scalar_t__ WARN_ON (int) ;
 int kfree (struct mlx5_hv_vhca_agent*) ;
 int mlx5_hv_vhca_agents_update (struct mlx5_hv_vhca*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mlx5_hv_vhca_agent*) ;

void mlx5_hv_vhca_agent_destroy(struct mlx5_hv_vhca_agent *agent)
{
 struct mlx5_hv_vhca *hv_vhca = agent->hv_vhca;

 mutex_lock(&hv_vhca->agents_lock);

 if (WARN_ON(agent != hv_vhca->agents[agent->type])) {
  mutex_unlock(&hv_vhca->agents_lock);
  return;
 }

 hv_vhca->agents[agent->type] = ((void*)0);
 mutex_unlock(&hv_vhca->agents_lock);

 if (agent->cleanup)
  agent->cleanup(agent);

 kfree(agent);

 mlx5_hv_vhca_agents_update(hv_vhca);
}
