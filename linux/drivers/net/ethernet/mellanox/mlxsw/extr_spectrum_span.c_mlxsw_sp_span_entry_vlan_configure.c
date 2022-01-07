
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_span_parms {int vid; struct mlxsw_sp_port* dest_port; } ;
struct mlxsw_sp_span_entry {int id; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MPAT_LEN ;
 int MLXSW_REG_MPAT_SPAN_TYPE_REMOTE_ETH ;
 int mlxsw_reg_mpat_eth_rspan_pack (char*,int ) ;
 int mlxsw_reg_mpat_pack (char*,int,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mpat ;

__attribute__((used)) static int
mlxsw_sp_span_entry_vlan_configure(struct mlxsw_sp_span_entry *span_entry,
       struct mlxsw_sp_span_parms sparms)
{
 struct mlxsw_sp_port *dest_port = sparms.dest_port;
 struct mlxsw_sp *mlxsw_sp = dest_port->mlxsw_sp;
 u8 local_port = dest_port->local_port;
 char mpat_pl[MLXSW_REG_MPAT_LEN];
 int pa_id = span_entry->id;

 mlxsw_reg_mpat_pack(mpat_pl, pa_id, local_port, 1,
       MLXSW_REG_MPAT_SPAN_TYPE_REMOTE_ETH);
 mlxsw_reg_mpat_eth_rspan_pack(mpat_pl, sparms.vid);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mpat), mpat_pl);
}
