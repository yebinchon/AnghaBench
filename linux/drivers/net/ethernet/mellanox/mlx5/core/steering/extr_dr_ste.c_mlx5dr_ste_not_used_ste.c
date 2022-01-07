
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste {int refcount; } ;


 int refcount_read (int *) ;

bool mlx5dr_ste_not_used_ste(struct mlx5dr_ste *ste)
{
 return !refcount_read(&ste->refcount);
}
