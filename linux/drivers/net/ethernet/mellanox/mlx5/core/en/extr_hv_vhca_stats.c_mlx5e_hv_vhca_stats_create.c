
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; struct mlx5_hv_vhca_agent* agent; int buf; } ;
struct mlx5e_priv {TYPE_2__ stats_agent; int netdev; TYPE_1__* mdev; } ;
struct mlx5_hv_vhca_agent {int dummy; } ;
struct TYPE_3__ {int hv_vhca; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct mlx5_hv_vhca_agent*) ;
 int IS_ERR_OR_NULL (struct mlx5_hv_vhca_agent*) ;
 int MLX5_HV_VHCA_AGENT_STATS ;
 int PTR_ERR (struct mlx5_hv_vhca_agent*) ;
 int kvfree (int ) ;
 int kvzalloc (int,int ) ;
 struct mlx5_hv_vhca_agent* mlx5_hv_vhca_agent_create (int ,int ,int ,int *,int ,struct mlx5e_priv*) ;
 int mlx5e_hv_vhca_stats_buf_size (struct mlx5e_priv*) ;
 int mlx5e_hv_vhca_stats_cleanup ;
 int mlx5e_hv_vhca_stats_control ;
 int mlx5e_hv_vhca_stats_work ;
 int netdev_warn (int ,char*,int ) ;

int mlx5e_hv_vhca_stats_create(struct mlx5e_priv *priv)
{
 int buf_len = mlx5e_hv_vhca_stats_buf_size(priv);
 struct mlx5_hv_vhca_agent *agent;

 priv->stats_agent.buf = kvzalloc(buf_len, GFP_KERNEL);
 if (!priv->stats_agent.buf)
  return -ENOMEM;

 agent = mlx5_hv_vhca_agent_create(priv->mdev->hv_vhca,
       MLX5_HV_VHCA_AGENT_STATS,
       mlx5e_hv_vhca_stats_control, ((void*)0),
       mlx5e_hv_vhca_stats_cleanup,
       priv);

 if (IS_ERR_OR_NULL(agent)) {
  if (IS_ERR(agent))
   netdev_warn(priv->netdev,
        "Failed to create hv vhca stats agent, err = %ld\n",
        PTR_ERR(agent));

  kvfree(priv->stats_agent.buf);
  return IS_ERR_OR_NULL(agent);
 }

 priv->stats_agent.agent = agent;
 INIT_DELAYED_WORK(&priv->stats_agent.work, mlx5e_hv_vhca_stats_work);

 return 0;
}
