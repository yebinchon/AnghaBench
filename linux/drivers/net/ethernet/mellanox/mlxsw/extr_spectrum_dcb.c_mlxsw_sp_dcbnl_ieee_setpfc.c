
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_4__ {struct ieee_pfc* pfc; TYPE_1__* ets; } ;
struct mlxsw_sp_port {TYPE_2__ dcb; } ;
struct ieee_pfc {int pfc_cap; scalar_t__ pfc_en; } ;
struct TYPE_3__ {int prio_tc; } ;


 int EINVAL ;
 int IEEE_8021QAZ_MAX_TCS ;
 int __mlxsw_sp_port_headroom_set (struct mlxsw_sp_port*,int ,int ,int,struct ieee_pfc*) ;
 int memcpy (struct ieee_pfc*,struct ieee_pfc*,int) ;
 int mlxsw_sp_port_is_pause_en (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_pfc_set (struct mlxsw_sp_port*,struct ieee_pfc*) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_ieee_setpfc(struct net_device *dev,
          struct ieee_pfc *pfc)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 bool pause_en = mlxsw_sp_port_is_pause_en(mlxsw_sp_port);
 int err;

 if (pause_en && pfc->pfc_en) {
  netdev_err(dev, "PAUSE frames already enabled on port\n");
  return -EINVAL;
 }

 err = __mlxsw_sp_port_headroom_set(mlxsw_sp_port, dev->mtu,
        mlxsw_sp_port->dcb.ets->prio_tc,
        pause_en, pfc);
 if (err) {
  netdev_err(dev, "Failed to configure port's headroom for PFC\n");
  return err;
 }

 err = mlxsw_sp_port_pfc_set(mlxsw_sp_port, pfc);
 if (err) {
  netdev_err(dev, "Failed to configure PFC\n");
  goto err_port_pfc_set;
 }

 memcpy(mlxsw_sp_port->dcb.pfc, pfc, sizeof(*pfc));
 mlxsw_sp_port->dcb.pfc->pfc_cap = IEEE_8021QAZ_MAX_TCS;

 return 0;

err_port_pfc_set:
 __mlxsw_sp_port_headroom_set(mlxsw_sp_port, dev->mtu,
         mlxsw_sp_port->dcb.ets->prio_tc, pause_en,
         mlxsw_sp_port->dcb.pfc);
 return err;
}
