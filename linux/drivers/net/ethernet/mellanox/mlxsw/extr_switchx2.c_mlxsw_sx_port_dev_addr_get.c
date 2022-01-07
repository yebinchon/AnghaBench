
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; } ;
struct mlxsw_sx_port {scalar_t__ local_port; struct net_device* dev; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;


 int ETH_ALEN ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPAD_LEN ;
 int mlxsw_reg_ppad_mac_memcpy_from (char*,int *) ;
 int mlxsw_reg_ppad_pack (char*,int,int ) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int ppad ;

__attribute__((used)) static int mlxsw_sx_port_dev_addr_get(struct mlxsw_sx_port *mlxsw_sx_port)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 struct net_device *dev = mlxsw_sx_port->dev;
 char ppad_pl[MLXSW_REG_PPAD_LEN];
 int err;

 mlxsw_reg_ppad_pack(ppad_pl, 0, 0);
 err = mlxsw_reg_query(mlxsw_sx->core, MLXSW_REG(ppad), ppad_pl);
 if (err)
  return err;
 mlxsw_reg_ppad_mac_memcpy_from(ppad_pl, dev->dev_addr);




 dev->dev_addr[ETH_ALEN - 1] += mlxsw_sx_port->local_port;
 return 0;
}
