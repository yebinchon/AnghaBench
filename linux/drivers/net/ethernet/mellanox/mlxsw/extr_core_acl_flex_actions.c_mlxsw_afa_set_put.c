
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_set {scalar_t__ shared; scalar_t__ ref_count; } ;
struct mlxsw_afa {int dummy; } ;


 int mlxsw_afa_set_destroy (struct mlxsw_afa_set*) ;
 int mlxsw_afa_set_unshare (struct mlxsw_afa*,struct mlxsw_afa_set*) ;

__attribute__((used)) static void mlxsw_afa_set_put(struct mlxsw_afa *mlxsw_afa,
         struct mlxsw_afa_set *set)
{
 if (--set->ref_count)
  return;
 if (set->shared)
  mlxsw_afa_set_unshare(mlxsw_afa, set);
 mlxsw_afa_set_destroy(set);
}
