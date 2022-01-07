
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; int local_port; } ;
struct TYPE_2__ {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPLR_LEN ;
 int mlxsw_reg_pplr_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_port_admin_status_set (struct mlxsw_sp_port*,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pplr ;

__attribute__((used)) static int mlxsw_sp_feature_loopback(struct net_device *dev, bool enable)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 char pplr_pl[MLXSW_REG_PPLR_LEN];
 int err;

 if (netif_running(dev))
  mlxsw_sp_port_admin_status_set(mlxsw_sp_port, 0);

 mlxsw_reg_pplr_pack(pplr_pl, mlxsw_sp_port->local_port, enable);
 err = mlxsw_reg_write(mlxsw_sp_port->mlxsw_sp->core, MLXSW_REG(pplr),
         pplr_pl);

 if (netif_running(dev))
  mlxsw_sp_port_admin_status_set(mlxsw_sp_port, 1);

 return err;
}
