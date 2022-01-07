
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void mlx5dr_ste_get(struct mlx5dr_ste *ste)
{
 refcount_inc(&ste->refcount);
}
