
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_entry {int id; } ;
struct mlxsw_sp_port {int dev; int mlxsw_sp; } ;
typedef enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;


 struct mlxsw_sp_span_entry* mlxsw_sp_span_entry_find_by_id (int ,int) ;
 int mlxsw_sp_span_inspected_port_del (struct mlxsw_sp_port*,struct mlxsw_sp_span_entry*,int,int) ;
 int netdev_dbg (int ,char*,int ) ;
 int netdev_err (int ,char*) ;

void mlxsw_sp_span_mirror_del(struct mlxsw_sp_port *from, int span_id,
         enum mlxsw_sp_span_type type, bool bind)
{
 struct mlxsw_sp_span_entry *span_entry;

 span_entry = mlxsw_sp_span_entry_find_by_id(from->mlxsw_sp, span_id);
 if (!span_entry) {
  netdev_err(from->dev, "no span entry found\n");
  return;
 }

 netdev_dbg(from->dev, "removing inspected port from SPAN entry %d\n",
     span_entry->id);
 mlxsw_sp_span_inspected_port_del(from, span_entry, type, bind);
}
