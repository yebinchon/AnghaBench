
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_resource {int list; } ;
struct mlxsw_afa_block {int resource_list; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void mlxsw_afa_resource_add(struct mlxsw_afa_block *block,
       struct mlxsw_afa_resource *resource)
{
 list_add(&resource->list, &block->resource_list);
}
