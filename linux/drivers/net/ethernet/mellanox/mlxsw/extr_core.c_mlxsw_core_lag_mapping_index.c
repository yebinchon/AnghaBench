
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_core {int dummy; } ;


 int MAX_LAG_MEMBERS ;
 int MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;

__attribute__((used)) static int mlxsw_core_lag_mapping_index(struct mlxsw_core *mlxsw_core,
     u16 lag_id, u8 port_index)
{
 return MLXSW_CORE_RES_GET(mlxsw_core, MAX_LAG_MEMBERS) * lag_id +
        port_index;
}
