
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_port {int dev; } ;
struct dcb_ieee_app_prio_map {int dummy; } ;
struct dcb_ieee_app_dscp_map {int dummy; } ;


 int MLXSW_REG_QPTS_TRUST_STATE_DSCP ;
 int MLXSW_REG_QPTS_TRUST_STATE_PCP ;
 int mlxsw_sp_port_dcb_app_default_prio (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_dcb_app_dscp_prio_map (struct mlxsw_sp_port*,int ,struct dcb_ieee_app_dscp_map*) ;
 int mlxsw_sp_port_dcb_app_prio_dscp_map (struct mlxsw_sp_port*,struct dcb_ieee_app_prio_map*) ;
 int mlxsw_sp_port_dcb_app_update_qpdpm (struct mlxsw_sp_port*,struct dcb_ieee_app_dscp_map*) ;
 int mlxsw_sp_port_dcb_app_update_qpdsm (struct mlxsw_sp_port*,struct dcb_ieee_app_prio_map*) ;
 int mlxsw_sp_port_dcb_toggle_trust (struct mlxsw_sp_port*,int ) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int mlxsw_sp_port_dcb_app_update(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct dcb_ieee_app_prio_map prio_map;
 struct dcb_ieee_app_dscp_map dscp_map;
 u8 default_prio;
 bool have_dscp;
 int err;

 default_prio = mlxsw_sp_port_dcb_app_default_prio(mlxsw_sp_port);
 have_dscp = mlxsw_sp_port_dcb_app_prio_dscp_map(mlxsw_sp_port,
       &prio_map);

 mlxsw_sp_port_dcb_app_dscp_prio_map(mlxsw_sp_port, default_prio,
         &dscp_map);
 err = mlxsw_sp_port_dcb_app_update_qpdpm(mlxsw_sp_port,
       &dscp_map);
 if (err) {
  netdev_err(mlxsw_sp_port->dev, "Couldn't configure priority map\n");
  return err;
 }

 err = mlxsw_sp_port_dcb_app_update_qpdsm(mlxsw_sp_port,
       &prio_map);
 if (err) {
  netdev_err(mlxsw_sp_port->dev, "Couldn't configure DSCP rewrite map\n");
  return err;
 }

 if (!have_dscp) {
  err = mlxsw_sp_port_dcb_toggle_trust(mlxsw_sp_port,
     MLXSW_REG_QPTS_TRUST_STATE_PCP);
  if (err)
   netdev_err(mlxsw_sp_port->dev, "Couldn't switch to trust L2\n");
  return err;
 }

 err = mlxsw_sp_port_dcb_toggle_trust(mlxsw_sp_port,
          MLXSW_REG_QPTS_TRUST_STATE_DSCP);
 if (err) {





  netdev_err(mlxsw_sp_port->dev, "Couldn't switch to trust L3\n");
  return err;
 }

 return 0;
}
