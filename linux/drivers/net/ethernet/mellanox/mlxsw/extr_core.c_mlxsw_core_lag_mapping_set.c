
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int * mapping; } ;
struct mlxsw_core {TYPE_1__ lag; } ;


 int mlxsw_core_lag_mapping_index (struct mlxsw_core*,int ,int ) ;

void mlxsw_core_lag_mapping_set(struct mlxsw_core *mlxsw_core,
    u16 lag_id, u8 port_index, u8 local_port)
{
 int index = mlxsw_core_lag_mapping_index(mlxsw_core,
       lag_id, port_index);

 mlxsw_core->lag.mapping[index] = local_port;
}
