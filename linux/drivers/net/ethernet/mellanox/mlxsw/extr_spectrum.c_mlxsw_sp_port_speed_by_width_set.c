
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp_port_type_speed_ops {int (* port_speed_base ) (struct mlxsw_sp*,int ,int*) ;int (* to_ptys_upper_speed ) (struct mlxsw_sp*,int) ;int (* reg_ptys_eth_pack ) (struct mlxsw_sp*,char*,int ,int,int ) ;} ;
struct TYPE_2__ {int autoneg; } ;
struct mlxsw_sp_port {TYPE_1__ link; int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_port_type_speed_ops* port_type_speed_ops; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ptys ;
 int stub1 (struct mlxsw_sp*,int ,int*) ;
 int stub2 (struct mlxsw_sp*,int) ;
 int stub3 (struct mlxsw_sp*,char*,int ,int,int ) ;

__attribute__((used)) static int
mlxsw_sp_port_speed_by_width_set(struct mlxsw_sp_port *mlxsw_sp_port, u8 width)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 const struct mlxsw_sp_port_type_speed_ops *ops;
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 eth_proto_admin;
 u32 upper_speed;
 u32 base_speed;
 int err;

 ops = mlxsw_sp->port_type_speed_ops;

 err = ops->port_speed_base(mlxsw_sp, mlxsw_sp_port->local_port,
       &base_speed);
 if (err)
  return err;
 upper_speed = base_speed * width;

 eth_proto_admin = ops->to_ptys_upper_speed(mlxsw_sp, upper_speed);
 ops->reg_ptys_eth_pack(mlxsw_sp, ptys_pl, mlxsw_sp_port->local_port,
          eth_proto_admin, mlxsw_sp_port->link.autoneg);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptys), ptys_pl);
}
