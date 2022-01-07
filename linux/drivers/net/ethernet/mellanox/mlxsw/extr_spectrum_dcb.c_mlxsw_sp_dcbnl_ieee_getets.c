
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ets; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct ieee_ets {int dummy; } ;


 int memcpy (struct ieee_ets*,int ,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_ieee_getets(struct net_device *dev,
          struct ieee_ets *ets)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 memcpy(ets, mlxsw_sp_port->dcb.ets, sizeof(*ets));

 return 0;
}
