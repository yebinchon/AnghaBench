
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* sb_vals; } ;
struct TYPE_2__ {int cms_egress_count; int cms_egress; int cms_ingress_count; int cms_ingress; } ;


 int MLXSW_REG_SBXX_DIR_EGRESS ;
 int MLXSW_REG_SBXX_DIR_INGRESS ;
 int __mlxsw_sp_sb_cms_init (struct mlxsw_sp*,int ,int ,int ,int ) ;

__attribute__((used)) static int mlxsw_sp_port_sb_cms_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 int err;

 err = __mlxsw_sp_sb_cms_init(mlxsw_sp,
         mlxsw_sp_port->local_port,
         MLXSW_REG_SBXX_DIR_INGRESS,
         mlxsw_sp->sb_vals->cms_ingress,
         mlxsw_sp->sb_vals->cms_ingress_count);
 if (err)
  return err;
 return __mlxsw_sp_sb_cms_init(mlxsw_sp_port->mlxsw_sp,
          mlxsw_sp_port->local_port,
          MLXSW_REG_SBXX_DIR_EGRESS,
          mlxsw_sp->sb_vals->cms_egress,
          mlxsw_sp->sb_vals->cms_egress_count);
}
