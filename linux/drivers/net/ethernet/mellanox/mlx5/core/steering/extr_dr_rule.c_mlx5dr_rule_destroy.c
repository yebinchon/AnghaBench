
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_table {TYPE_1__* dmn; } ;
struct mlx5dr_rule {struct mlx5dr_matcher* matcher; } ;
struct mlx5dr_matcher {int refcount; struct mlx5dr_table* tbl; } ;
struct TYPE_2__ {int mutex; } ;


 int dr_rule_destroy_rule (struct mlx5dr_rule*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec (int *) ;

int mlx5dr_rule_destroy(struct mlx5dr_rule *rule)
{
 struct mlx5dr_matcher *matcher = rule->matcher;
 struct mlx5dr_table *tbl = rule->matcher->tbl;
 int ret;

 mutex_lock(&tbl->dmn->mutex);

 ret = dr_rule_destroy_rule(rule);

 mutex_unlock(&tbl->dmn->mutex);

 if (!ret)
  refcount_dec(&matcher->refcount);
 return ret;
}
