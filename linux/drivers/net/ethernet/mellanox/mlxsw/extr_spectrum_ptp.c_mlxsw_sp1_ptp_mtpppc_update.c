
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int egr_types; int ing_types; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; int dev; TYPE_1__ ptp; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; int core; } ;


 int mlxsw_core_max_ports (int ) ;
 int mlxsw_sp1_ptp_mtpppc_set (struct mlxsw_sp*,int ,int ) ;
 int mlxsw_sp_nve_inc_parsing_depth_get (struct mlxsw_sp*) ;
 int mlxsw_sp_nve_inc_parsing_depth_put (struct mlxsw_sp*) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int mlxsw_sp1_ptp_mtpppc_update(struct mlxsw_sp_port *mlxsw_sp_port,
           u16 ing_types, u16 egr_types)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_port *tmp;
 u16 orig_ing_types = 0;
 u16 orig_egr_types = 0;
 int err;
 int i;




 for (i = 1; i < mlxsw_core_max_ports(mlxsw_sp->core); i++) {
  tmp = mlxsw_sp->ports[i];
  if (tmp) {
   orig_ing_types |= tmp->ptp.ing_types;
   orig_egr_types |= tmp->ptp.egr_types;
  }
  if (tmp && tmp != mlxsw_sp_port) {
   ing_types |= tmp->ptp.ing_types;
   egr_types |= tmp->ptp.egr_types;
  }
 }

 if ((ing_types || egr_types) && !(orig_ing_types || orig_egr_types)) {
  err = mlxsw_sp_nve_inc_parsing_depth_get(mlxsw_sp);
  if (err) {
   netdev_err(mlxsw_sp_port->dev, "Failed to increase parsing depth");
   return err;
  }
 }
 if (!(ing_types || egr_types) && (orig_ing_types || orig_egr_types))
  mlxsw_sp_nve_inc_parsing_depth_put(mlxsw_sp);

 return mlxsw_sp1_ptp_mtpppc_set(mlxsw_sp_port->mlxsw_sp,
           ing_types, egr_types);
}
