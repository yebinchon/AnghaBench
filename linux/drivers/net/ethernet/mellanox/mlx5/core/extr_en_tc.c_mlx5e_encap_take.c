
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_encap_entry {int refcnt; } ;


 int refcount_inc_not_zero (int *) ;

bool mlx5e_encap_take(struct mlx5e_encap_entry *e)
{
 return refcount_inc_not_zero(&e->refcnt);
}
