
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_flow_handle {int dummy; } ;
struct TYPE_4__ {int num_flows; } ;
struct mlx5_eswitch {TYPE_2__ offloads; } ;
struct mlx5_esw_flow_attr {scalar_t__ split_count; int prio; scalar_t__ dest_chain; scalar_t__ chain; TYPE_1__* dests; } ;
struct TYPE_3__ {scalar_t__ termtbl; } ;


 int MLX5_MAX_FLOW_FWD_VPORTS ;
 int atomic64_dec (int *) ;
 int esw_put_prio_table (struct mlx5_eswitch*,scalar_t__,int,int) ;
 int mlx5_del_flow_rules (struct mlx5_flow_handle*) ;
 int mlx5_eswitch_termtbl_put (struct mlx5_eswitch*,scalar_t__) ;

__attribute__((used)) static void
__mlx5_eswitch_del_rule(struct mlx5_eswitch *esw,
   struct mlx5_flow_handle *rule,
   struct mlx5_esw_flow_attr *attr,
   bool fwd_rule)
{
 bool split = (attr->split_count > 0);
 int i;

 mlx5_del_flow_rules(rule);


 for (i = 0; i < MLX5_MAX_FLOW_FWD_VPORTS; i++) {
  if (attr->dests[i].termtbl)
   mlx5_eswitch_termtbl_put(esw, attr->dests[i].termtbl);
 }

 atomic64_dec(&esw->offloads.num_flows);

 if (fwd_rule) {
  esw_put_prio_table(esw, attr->chain, attr->prio, 1);
  esw_put_prio_table(esw, attr->chain, attr->prio, 0);
 } else {
  esw_put_prio_table(esw, attr->chain, attr->prio, !!split);
  if (attr->dest_chain)
   esw_put_prio_table(esw, attr->dest_chain, 1, 0);
 }
}
