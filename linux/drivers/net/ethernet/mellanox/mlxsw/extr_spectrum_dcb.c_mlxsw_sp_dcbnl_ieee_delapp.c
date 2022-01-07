
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;
struct dcb_app {int dummy; } ;


 int dcb_ieee_delapp (struct net_device*,struct dcb_app*) ;
 int mlxsw_sp_port_dcb_app_update (struct mlxsw_sp_port*) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_ieee_delapp(struct net_device *dev,
          struct dcb_app *app)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 int err;

 err = dcb_ieee_delapp(dev, app);
 if (err)
  return err;

 err = mlxsw_sp_port_dcb_app_update(mlxsw_sp_port);
 if (err)
  netdev_err(dev, "Failed to update DCB APP configuration\n");
 return 0;
}
