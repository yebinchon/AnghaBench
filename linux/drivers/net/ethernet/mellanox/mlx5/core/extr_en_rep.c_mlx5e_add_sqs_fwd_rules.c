
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct TYPE_8__ {int num_tc; } ;
struct TYPE_9__ {int num; struct mlx5e_channel** c; TYPE_3__ params; } ;
struct mlx5e_priv {int netdev; TYPE_4__ channels; struct mlx5e_rep_priv* ppriv; TYPE_2__* mdev; } ;
struct mlx5e_channel {int num_tc; TYPE_5__* sq; } ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_10__ {int sqn; } ;
struct TYPE_6__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_7__ {TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int mlx5e_sqs2vport_start (struct mlx5_eswitch*,struct mlx5_eswitch_rep*,int *,int) ;
 int netdev_warn (int ,char*,int) ;

int mlx5e_add_sqs_fwd_rules(struct mlx5e_priv *priv)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_eswitch_rep *rep = rpriv->rep;
 struct mlx5e_channel *c;
 int n, tc, num_sqs = 0;
 int err = -ENOMEM;
 u32 *sqs;

 sqs = kcalloc(priv->channels.num * priv->channels.params.num_tc, sizeof(*sqs), GFP_KERNEL);
 if (!sqs)
  goto out;

 for (n = 0; n < priv->channels.num; n++) {
  c = priv->channels.c[n];
  for (tc = 0; tc < c->num_tc; tc++)
   sqs[num_sqs++] = c->sq[tc].sqn;
 }

 err = mlx5e_sqs2vport_start(esw, rep, sqs, num_sqs);
 kfree(sqs);

out:
 if (err)
  netdev_warn(priv->netdev, "Failed to add SQs FWD rules %d\n", err);
 return err;
}
