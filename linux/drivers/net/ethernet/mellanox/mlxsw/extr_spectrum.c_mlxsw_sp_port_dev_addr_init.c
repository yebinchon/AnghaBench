
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {scalar_t__ local_port; TYPE_1__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int base_mac; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;


 int ETH_ALEN ;
 int ether_addr_copy (unsigned char*,int ) ;
 int mlxsw_sp_port_dev_addr_set (struct mlxsw_sp_port*,unsigned char*) ;

__attribute__((used)) static int mlxsw_sp_port_dev_addr_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 unsigned char *addr = mlxsw_sp_port->dev->dev_addr;

 ether_addr_copy(addr, mlxsw_sp->base_mac);
 addr[ETH_ALEN - 1] += mlxsw_sp_port->local_port;
 return mlxsw_sp_port_dev_addr_set(mlxsw_sp_port, addr);
}
