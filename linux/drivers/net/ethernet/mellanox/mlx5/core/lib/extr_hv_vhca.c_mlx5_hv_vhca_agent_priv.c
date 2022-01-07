
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca_agent {void* priv; } ;



void *mlx5_hv_vhca_agent_priv(struct mlx5_hv_vhca_agent *agent)
{
 return agent->priv;
}
