
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xsk {int * umems; int refcnt; } ;


 int kfree (int *) ;

__attribute__((used)) static void mlx5e_xsk_put_umems(struct mlx5e_xsk *xsk)
{
 if (!--xsk->refcnt) {
  kfree(xsk->umems);
  xsk->umems = ((void*)0);
 }
}
