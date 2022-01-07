
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__* mapping; } ;
struct mlxsw_core {TYPE_1__ lag; } ;


 int MAX_LAG_MEMBERS ;
 int MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 int mlxsw_core_lag_mapping_index (struct mlxsw_core*,int ,int) ;

void mlxsw_core_lag_mapping_clear(struct mlxsw_core *mlxsw_core,
      u16 lag_id, u8 local_port)
{
 int i;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_core, MAX_LAG_MEMBERS); i++) {
  int index = mlxsw_core_lag_mapping_index(mlxsw_core,
        lag_id, i);

  if (mlxsw_core->lag.mapping[index] == local_port)
   mlxsw_core->lag.mapping[index] = 0;
 }
}
