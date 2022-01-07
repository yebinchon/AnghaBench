
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_entry {int id; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;
typedef enum mlxsw_reg_mpar_i_e { ____Placeholder_mlxsw_reg_mpar_i_e } mlxsw_reg_mpar_i_e ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MPAR_LEN ;
 int mlxsw_reg_mpar_pack (char*,int ,int,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mpar ;

__attribute__((used)) static int
mlxsw_sp_span_inspected_port_bind(struct mlxsw_sp_port *port,
      struct mlxsw_sp_span_entry *span_entry,
      enum mlxsw_sp_span_type type,
      bool bind)
{
 struct mlxsw_sp *mlxsw_sp = port->mlxsw_sp;
 char mpar_pl[MLXSW_REG_MPAR_LEN];
 int pa_id = span_entry->id;


 mlxsw_reg_mpar_pack(mpar_pl, port->local_port,
       (enum mlxsw_reg_mpar_i_e)type, bind, pa_id);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mpar), mpar_pl);
}
