
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_table {TYPE_1__* dmn; int refcount; } ;
struct mlx5dr_matcher {struct mlx5dr_table* tbl; int refcount; } ;
struct TYPE_2__ {int mutex; } ;


 int EBUSY ;
 int dr_matcher_remove_from_tbl (struct mlx5dr_matcher*) ;
 int dr_matcher_uninit (struct mlx5dr_matcher*) ;
 int kfree (struct mlx5dr_matcher*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec (int *) ;
 int refcount_read (int *) ;

int mlx5dr_matcher_destroy(struct mlx5dr_matcher *matcher)
{
 struct mlx5dr_table *tbl = matcher->tbl;

 if (refcount_read(&matcher->refcount) > 1)
  return -EBUSY;

 mutex_lock(&tbl->dmn->mutex);

 dr_matcher_remove_from_tbl(matcher);
 dr_matcher_uninit(matcher);
 refcount_dec(&matcher->tbl->refcount);

 mutex_unlock(&tbl->dmn->mutex);
 kfree(matcher);

 return 0;
}
