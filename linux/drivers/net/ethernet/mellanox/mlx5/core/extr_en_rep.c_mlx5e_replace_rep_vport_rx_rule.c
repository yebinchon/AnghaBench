
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_rep_priv {struct mlx5_flow_handle* vport_rx_rule; struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; TYPE_2__* mdev; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_eswitch_rep {int vport; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int mlx5_del_flow_rules (struct mlx5_flow_handle*) ;
 struct mlx5_flow_handle* mlx5_eswitch_create_vport_rx_rule (struct mlx5_eswitch*,int ,struct mlx5_flow_destination*) ;

__attribute__((used)) static int mlx5e_replace_rep_vport_rx_rule(struct mlx5e_priv *priv,
        struct mlx5_flow_destination *dest)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_eswitch_rep *rep = rpriv->rep;
 struct mlx5_flow_handle *flow_rule;

 flow_rule = mlx5_eswitch_create_vport_rx_rule(esw,
            rep->vport,
            dest);
 if (IS_ERR(flow_rule))
  return PTR_ERR(flow_rule);

 mlx5_del_flow_rules(rpriv->vport_rx_rule);
 rpriv->vport_rx_rule = flow_rule;
 return 0;
}
