
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fib_node {TYPE_1__* fib; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int proto; } ;




 int mlxsw_sp_fib4_node_flush (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;
 int mlxsw_sp_fib6_node_flush (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;

__attribute__((used)) static void mlxsw_sp_fib_node_flush(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_fib_node *fib_node)
{
 switch (fib_node->fib->proto) {
 case 129:
  mlxsw_sp_fib4_node_flush(mlxsw_sp, fib_node);
  break;
 case 128:
  mlxsw_sp_fib6_node_flush(mlxsw_sp, fib_node);
  break;
 }
}
