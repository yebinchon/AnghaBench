
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct mlxsw_sp_port {scalar_t__ lagged; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; int core; } ;


 size_t mlxsw_core_lag_mapping_get (int ,int ,size_t) ;

__attribute__((used)) static inline struct mlxsw_sp_port *
mlxsw_sp_port_lagged_get(struct mlxsw_sp *mlxsw_sp, u16 lag_id, u8 port_index)
{
 struct mlxsw_sp_port *mlxsw_sp_port;
 u8 local_port;

 local_port = mlxsw_core_lag_mapping_get(mlxsw_sp->core,
      lag_id, port_index);
 mlxsw_sp_port = mlxsw_sp->ports[local_port];
 return mlxsw_sp_port && mlxsw_sp_port->lagged ? mlxsw_sp_port : ((void*)0);
}
