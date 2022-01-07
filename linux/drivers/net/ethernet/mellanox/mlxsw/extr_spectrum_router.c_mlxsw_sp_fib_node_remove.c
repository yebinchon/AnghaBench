
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_node {int ht_node; } ;
struct mlxsw_sp_fib {int ht; } ;


 int mlxsw_sp_fib_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void mlxsw_sp_fib_node_remove(struct mlxsw_sp_fib *fib,
         struct mlxsw_sp_fib_node *fib_node)
{
 rhashtable_remove_fast(&fib->ht, &fib_node->ht_node,
          mlxsw_sp_fib_ht_params);
}
