
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;


 int mlxsw_sp_port_hwtstamp_get (struct mlxsw_sp_port*,struct ifreq*) ;
 int mlxsw_sp_port_hwtstamp_set (struct mlxsw_sp_port*,struct ifreq*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mlxsw_sp_port_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 switch (cmd) {
 case 128:
  return mlxsw_sp_port_hwtstamp_set(mlxsw_sp_port, ifr);
 case 129:
  return mlxsw_sp_port_hwtstamp_get(mlxsw_sp_port, ifr);
 default:
  return -EOPNOTSUPP;
 }
}
