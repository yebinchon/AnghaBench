
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_port {int dev; int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SBIB_LEN ;
 int mlxsw_reg_sbib_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 scalar_t__ mlxsw_sp_span_is_egress_mirror (struct mlxsw_sp_port*) ;
 int mlxsw_sp_span_mtu_to_buffsize (struct mlxsw_sp*,int ) ;
 int netdev_err (int ,char*) ;
 int sbib ;

int mlxsw_sp_span_port_mtu_update(struct mlxsw_sp_port *port, u16 mtu)
{
 struct mlxsw_sp *mlxsw_sp = port->mlxsw_sp;
 char sbib_pl[MLXSW_REG_SBIB_LEN];
 int err;




 if (mlxsw_sp_span_is_egress_mirror(port)) {
  u32 buffsize = mlxsw_sp_span_mtu_to_buffsize(mlxsw_sp, mtu);

  mlxsw_reg_sbib_pack(sbib_pl, port->local_port, buffsize);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sbib), sbib_pl);
  if (err) {
   netdev_err(port->dev, "Could not update shared buffer for mirroring\n");
   return err;
  }
 }

 return 0;
}
