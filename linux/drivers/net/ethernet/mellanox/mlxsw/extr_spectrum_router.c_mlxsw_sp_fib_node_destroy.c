
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_node {int entry_list; int list; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_fib_node*) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void mlxsw_sp_fib_node_destroy(struct mlxsw_sp_fib_node *fib_node)
{
 list_del(&fib_node->list);
 WARN_ON(!list_empty(&fib_node->entry_list));
 kfree(fib_node);
}
