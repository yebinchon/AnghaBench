
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {TYPE_2__* ets; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct ieee_ets {int dummy; } ;
struct TYPE_4__ {int ets_cap; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int __mlxsw_sp_dcbnl_ieee_setets (struct mlxsw_sp_port*,struct ieee_ets*) ;
 int memcpy (TYPE_2__*,struct ieee_ets*,int) ;
 int mlxsw_sp_port_ets_validate (struct mlxsw_sp_port*,struct ieee_ets*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_ieee_setets(struct net_device *dev,
          struct ieee_ets *ets)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 int err;

 err = mlxsw_sp_port_ets_validate(mlxsw_sp_port, ets);
 if (err)
  return err;

 err = __mlxsw_sp_dcbnl_ieee_setets(mlxsw_sp_port, ets);
 if (err)
  return err;

 memcpy(mlxsw_sp_port->dcb.ets, ets, sizeof(*ets));
 mlxsw_sp_port->dcb.ets->ets_cap = IEEE_8021QAZ_MAX_TCS;

 return 0;
}
