
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sx_port {int dummy; } ;


 int __mlxsw_sx_port_mtu_set (struct mlxsw_sx_port*,int ) ;

__attribute__((used)) static int mlxsw_sx_port_mtu_ib_set(struct mlxsw_sx_port *mlxsw_sx_port,
        u16 mtu)
{
 return __mlxsw_sx_port_mtu_set(mlxsw_sx_port, mtu);
}
