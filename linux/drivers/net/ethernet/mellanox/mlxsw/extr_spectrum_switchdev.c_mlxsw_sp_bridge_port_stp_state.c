
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_bridge_port {int stp_state; } ;



u8
mlxsw_sp_bridge_port_stp_state(struct mlxsw_sp_bridge_port *bridge_port)
{
 return bridge_port->stp_state;
}
