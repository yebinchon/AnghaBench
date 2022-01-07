
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_core {TYPE_1__* driver; } ;
struct TYPE_2__ {int res_query_enabled; } ;



bool mlxsw_core_res_query_enabled(const struct mlxsw_core *mlxsw_core)
{
 return mlxsw_core->driver->res_query_enabled;
}
