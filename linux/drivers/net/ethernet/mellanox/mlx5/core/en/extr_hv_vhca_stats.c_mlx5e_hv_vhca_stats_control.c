
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_hv_vhca_stats_agent {int delay; int work; } ;
struct mlx5e_priv {int wq; struct mlx5e_hv_vhca_stats_agent stats_agent; int max_nch; } ;
struct mlx5_hv_vhca_control_block {int command; int rings; int version; } ;
struct mlx5_hv_vhca_agent {int dummy; } ;


 int MLX5_HV_VHCA_STATS_UPDATE_ONCE ;
 int MLX5_HV_VHCA_STATS_VERSION ;
 int cancel_delayed_work_sync (int *) ;
 struct mlx5e_priv* mlx5_hv_vhca_agent_priv (struct mlx5_hv_vhca_agent*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void mlx5e_hv_vhca_stats_control(struct mlx5_hv_vhca_agent *agent,
     struct mlx5_hv_vhca_control_block *block)
{
 struct mlx5e_hv_vhca_stats_agent *sagent;
 struct mlx5e_priv *priv;

 priv = mlx5_hv_vhca_agent_priv(agent);
 sagent = &priv->stats_agent;

 block->version = MLX5_HV_VHCA_STATS_VERSION;
 block->rings = priv->max_nch;

 if (!block->command) {
  cancel_delayed_work_sync(&priv->stats_agent.work);
  return;
 }

 sagent->delay = block->command == MLX5_HV_VHCA_STATS_UPDATE_ONCE ? 0 :
   msecs_to_jiffies(block->command * 100);

 queue_delayed_work(priv->wq, &sagent->work, sagent->delay);
}
