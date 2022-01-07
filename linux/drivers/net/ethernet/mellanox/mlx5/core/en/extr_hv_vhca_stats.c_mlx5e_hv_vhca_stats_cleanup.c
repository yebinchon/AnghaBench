
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct mlx5e_priv {TYPE_1__ stats_agent; } ;
struct mlx5_hv_vhca_agent {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct mlx5e_priv* mlx5_hv_vhca_agent_priv (struct mlx5_hv_vhca_agent*) ;

__attribute__((used)) static void mlx5e_hv_vhca_stats_cleanup(struct mlx5_hv_vhca_agent *agent)
{
 struct mlx5e_priv *priv = mlx5_hv_vhca_agent_priv(agent);

 cancel_delayed_work_sync(&priv->stats_agent.work);
}
