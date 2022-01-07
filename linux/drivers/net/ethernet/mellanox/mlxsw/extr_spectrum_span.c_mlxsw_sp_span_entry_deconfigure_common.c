
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct mlxsw_sp_port* dest_port; } ;
struct mlxsw_sp_span_entry {int id; TYPE_1__ parms; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_mpat_span_type { ____Placeholder_mlxsw_reg_mpat_span_type } mlxsw_reg_mpat_span_type ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MPAT_LEN ;
 int mlxsw_reg_mpat_pack (char*,int,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mpat ;

__attribute__((used)) static void
mlxsw_sp_span_entry_deconfigure_common(struct mlxsw_sp_span_entry *span_entry,
           enum mlxsw_reg_mpat_span_type span_type)
{
 struct mlxsw_sp_port *dest_port = span_entry->parms.dest_port;
 struct mlxsw_sp *mlxsw_sp = dest_port->mlxsw_sp;
 u8 local_port = dest_port->local_port;
 char mpat_pl[MLXSW_REG_MPAT_LEN];
 int pa_id = span_entry->id;

 mlxsw_reg_mpat_pack(mpat_pl, pa_id, local_port, 0, span_type);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mpat), mpat_pl);
}
