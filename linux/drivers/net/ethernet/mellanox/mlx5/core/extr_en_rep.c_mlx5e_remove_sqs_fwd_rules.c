
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; TYPE_2__* mdev; } ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int mlx5e_sqs2vport_stop (struct mlx5_eswitch*,struct mlx5_eswitch_rep*) ;

void mlx5e_remove_sqs_fwd_rules(struct mlx5e_priv *priv)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_eswitch_rep *rep = rpriv->rep;

 mlx5e_sqs2vport_stop(esw, rep);
}
