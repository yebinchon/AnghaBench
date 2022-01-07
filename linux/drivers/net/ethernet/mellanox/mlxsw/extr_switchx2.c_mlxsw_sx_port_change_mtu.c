
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct mlxsw_sx_port {int dummy; } ;


 int mlxsw_sx_port_mtu_eth_set (struct mlxsw_sx_port*,int) ;
 struct mlxsw_sx_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sx_port_change_mtu(struct net_device *dev, int mtu)
{
 struct mlxsw_sx_port *mlxsw_sx_port = netdev_priv(dev);
 int err;

 err = mlxsw_sx_port_mtu_eth_set(mlxsw_sx_port, mtu);
 if (err)
  return err;
 dev->mtu = mtu;
 return 0;
}
