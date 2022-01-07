
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_6__ {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_5__ {TYPE_1__* pfc; } ;
struct mlxsw_sp_port {TYPE_3__ link; TYPE_2__ dcb; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct TYPE_4__ {scalar_t__ pfc_en; } ;


 int EINVAL ;
 int mlxsw_sp_port_headroom_set (struct mlxsw_sp_port*,int ,int) ;
 int mlxsw_sp_port_is_pause_en (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_pause_set (struct mlxsw_sp_port*,struct ethtool_pauseparam*) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_set_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *pause)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 bool pause_en = pause->tx_pause || pause->rx_pause;
 int err;

 if (mlxsw_sp_port->dcb.pfc && mlxsw_sp_port->dcb.pfc->pfc_en) {
  netdev_err(dev, "PFC already enabled on port\n");
  return -EINVAL;
 }

 if (pause->autoneg) {
  netdev_err(dev, "PAUSE frames autonegotiation isn't supported\n");
  return -EINVAL;
 }

 err = mlxsw_sp_port_headroom_set(mlxsw_sp_port, dev->mtu, pause_en);
 if (err) {
  netdev_err(dev, "Failed to configure port's headroom\n");
  return err;
 }

 err = mlxsw_sp_port_pause_set(mlxsw_sp_port, pause);
 if (err) {
  netdev_err(dev, "Failed to set PAUSE parameters\n");
  goto err_port_pause_configure;
 }

 mlxsw_sp_port->link.rx_pause = pause->rx_pause;
 mlxsw_sp_port->link.tx_pause = pause->tx_pause;

 return 0;

err_port_pause_configure:
 pause_en = mlxsw_sp_port_is_pause_en(mlxsw_sp_port);
 mlxsw_sp_port_headroom_set(mlxsw_sp_port, dev->mtu, pause_en);
 return err;
}
