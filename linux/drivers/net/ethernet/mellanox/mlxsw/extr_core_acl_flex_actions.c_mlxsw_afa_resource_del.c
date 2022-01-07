
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_resource {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void mlxsw_afa_resource_del(struct mlxsw_afa_resource *resource)
{
 list_del(&resource->list);
}
