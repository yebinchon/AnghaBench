
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_table {int route_list; TYPE_1__* vifs; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int MAXVIFS ;
 int list_empty (int *) ;

bool mlxsw_sp_mr_table_empty(const struct mlxsw_sp_mr_table *mr_table)
{
 int i;

 for (i = 0; i < MAXVIFS; i++)
  if (mr_table->vifs[i].dev)
   return 0;
 return list_empty(&mr_table->route_list);
}
