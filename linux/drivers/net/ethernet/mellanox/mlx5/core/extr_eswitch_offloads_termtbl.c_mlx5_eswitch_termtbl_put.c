
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_termtbl_handle {scalar_t__ ref_count; int termtbl; int rule; int termtbl_hlist; } ;
struct TYPE_2__ {int termtbl_mutex; } ;
struct mlx5_eswitch {TYPE_1__ offloads; } ;


 int hash_del (int *) ;
 int kfree (struct mlx5_termtbl_handle*) ;
 int mlx5_del_flow_rules (int ) ;
 int mlx5_destroy_flow_table (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
mlx5_eswitch_termtbl_put(struct mlx5_eswitch *esw,
    struct mlx5_termtbl_handle *tt)
{
 mutex_lock(&esw->offloads.termtbl_mutex);
 if (--tt->ref_count == 0)
  hash_del(&tt->termtbl_hlist);
 mutex_unlock(&esw->offloads.termtbl_mutex);

 if (!tt->ref_count) {
  mlx5_del_flow_rules(tt->rule);
  mlx5_destroy_flow_table(tt->termtbl);
  kfree(tt);
 }
}
