
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp_fib_node {int entry_list; TYPE_1__* fib; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vr; } ;


 int list_empty (int *) ;
 int mlxsw_sp_fib_node_destroy (struct mlxsw_sp_fib_node*) ;
 int mlxsw_sp_fib_node_fini (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;
 int mlxsw_sp_vr_put (struct mlxsw_sp*,struct mlxsw_sp_vr*) ;

__attribute__((used)) static void mlxsw_sp_fib_node_put(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_fib_node *fib_node)
{
 struct mlxsw_sp_vr *vr = fib_node->fib->vr;

 if (!list_empty(&fib_node->entry_list))
  return;
 mlxsw_sp_fib_node_fini(mlxsw_sp, fib_node);
 mlxsw_sp_fib_node_destroy(fib_node);
 mlxsw_sp_vr_put(mlxsw_sp, vr);
}
