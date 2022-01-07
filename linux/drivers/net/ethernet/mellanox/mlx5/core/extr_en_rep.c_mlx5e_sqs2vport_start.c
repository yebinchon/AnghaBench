
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_rep_sq {int list; struct mlx5_flow_handle* send_to_vport_rule; } ;
struct mlx5e_rep_priv {int vport_sqs_list; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch_rep {int vport; } ;
struct mlx5_eswitch {scalar_t__ mode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 scalar_t__ MLX5_ESWITCH_OFFLOADS ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int kfree (struct mlx5e_rep_sq*) ;
 struct mlx5e_rep_sq* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mlx5_flow_handle* mlx5_eswitch_add_send_to_vport_rule (struct mlx5_eswitch*,int ,int ) ;
 struct mlx5e_rep_priv* mlx5e_rep_to_rep_priv (struct mlx5_eswitch_rep*) ;
 int mlx5e_sqs2vport_stop (struct mlx5_eswitch*,struct mlx5_eswitch_rep*) ;

__attribute__((used)) static int mlx5e_sqs2vport_start(struct mlx5_eswitch *esw,
     struct mlx5_eswitch_rep *rep,
     u32 *sqns_array, int sqns_num)
{
 struct mlx5_flow_handle *flow_rule;
 struct mlx5e_rep_priv *rpriv;
 struct mlx5e_rep_sq *rep_sq;
 int err;
 int i;

 if (esw->mode != MLX5_ESWITCH_OFFLOADS)
  return 0;

 rpriv = mlx5e_rep_to_rep_priv(rep);
 for (i = 0; i < sqns_num; i++) {
  rep_sq = kzalloc(sizeof(*rep_sq), GFP_KERNEL);
  if (!rep_sq) {
   err = -ENOMEM;
   goto out_err;
  }


  flow_rule = mlx5_eswitch_add_send_to_vport_rule(esw,
        rep->vport,
        sqns_array[i]);
  if (IS_ERR(flow_rule)) {
   err = PTR_ERR(flow_rule);
   kfree(rep_sq);
   goto out_err;
  }
  rep_sq->send_to_vport_rule = flow_rule;
  list_add(&rep_sq->list, &rpriv->vport_sqs_list);
 }
 return 0;

out_err:
 mlx5e_sqs2vport_stop(esw, rep);
 return err;
}
