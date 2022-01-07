
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_table {int tx; int rx; int matcher_list; struct mlx5dr_domain* dmn; } ;
struct TYPE_3__ {int * prev; } ;
struct mlx5dr_matcher {TYPE_1__ matcher_list; int tx; int rx; struct mlx5dr_table* tbl; } ;
struct mlx5dr_domain {scalar_t__ type; } ;


 scalar_t__ MLX5DR_DOMAIN_TYPE_FDB ;
 scalar_t__ MLX5DR_DOMAIN_TYPE_NIC_RX ;
 scalar_t__ MLX5DR_DOMAIN_TYPE_NIC_TX ;
 int dr_matcher_disconnect (struct mlx5dr_domain*,int *,int *,int *) ;
 int list_del (TYPE_1__*) ;
 scalar_t__ list_is_last (TYPE_1__*,int *) ;
 struct mlx5dr_matcher* list_next_entry (struct mlx5dr_matcher*,int ) ;
 struct mlx5dr_matcher* list_prev_entry (struct mlx5dr_matcher*,int ) ;
 int matcher_list ;

__attribute__((used)) static int dr_matcher_remove_from_tbl(struct mlx5dr_matcher *matcher)
{
 struct mlx5dr_matcher *prev_matcher, *next_matcher;
 struct mlx5dr_table *tbl = matcher->tbl;
 struct mlx5dr_domain *dmn = tbl->dmn;
 int ret = 0;

 if (list_is_last(&matcher->matcher_list, &tbl->matcher_list))
  next_matcher = ((void*)0);
 else
  next_matcher = list_next_entry(matcher, matcher_list);

 if (matcher->matcher_list.prev == &tbl->matcher_list)
  prev_matcher = ((void*)0);
 else
  prev_matcher = list_prev_entry(matcher, matcher_list);

 if (dmn->type == MLX5DR_DOMAIN_TYPE_FDB ||
     dmn->type == MLX5DR_DOMAIN_TYPE_NIC_RX) {
  ret = dr_matcher_disconnect(dmn, &tbl->rx,
         next_matcher ? &next_matcher->rx : ((void*)0),
         prev_matcher ? &prev_matcher->rx : ((void*)0));
  if (ret)
   return ret;
 }

 if (dmn->type == MLX5DR_DOMAIN_TYPE_FDB ||
     dmn->type == MLX5DR_DOMAIN_TYPE_NIC_TX) {
  ret = dr_matcher_disconnect(dmn, &tbl->tx,
         next_matcher ? &next_matcher->tx : ((void*)0),
         prev_matcher ? &prev_matcher->tx : ((void*)0));
  if (ret)
   return ret;
 }

 list_del(&matcher->matcher_list);

 return 0;
}
