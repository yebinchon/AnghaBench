
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int pfc; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct ieee_pfc {int dummy; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int memcpy (struct ieee_pfc*,int ,int) ;
 int mlxsw_sp_port_pfc_cnt_get (struct mlxsw_sp_port*,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_ieee_getpfc(struct net_device *dev,
          struct ieee_pfc *pfc)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 int err, i;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_pfc_cnt_get(mlxsw_sp_port, i);
  if (err) {
   netdev_err(dev, "Failed to get PFC count for priority %d\n",
       i);
   return err;
  }
 }

 memcpy(pfc, mlxsw_sp_port->dcb.pfc, sizeof(*pfc));

 return 0;
}
