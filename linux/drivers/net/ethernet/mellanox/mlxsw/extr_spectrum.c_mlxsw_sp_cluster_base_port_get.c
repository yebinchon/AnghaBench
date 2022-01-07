
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_SP_PORTS_PER_CLUSTER_MAX ;

__attribute__((used)) static u8 mlxsw_sp_cluster_base_port_get(u8 local_port)
{
 u8 offset = (local_port - 1) % MLXSW_SP_PORTS_PER_CLUSTER_MAX;

 return local_port - offset;
}
