
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; int agent; } ;
struct mlx5e_priv {TYPE_1__ stats_agent; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int kvfree (int ) ;
 int mlx5_hv_vhca_agent_destroy (int ) ;

void mlx5e_hv_vhca_stats_destroy(struct mlx5e_priv *priv)
{
 if (IS_ERR_OR_NULL(priv->stats_agent.agent))
  return;

 mlx5_hv_vhca_agent_destroy(priv->stats_agent.agent);
 kvfree(priv->stats_agent.buf);
}
