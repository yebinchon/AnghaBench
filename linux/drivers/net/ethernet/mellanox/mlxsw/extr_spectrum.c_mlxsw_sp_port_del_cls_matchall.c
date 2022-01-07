
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_matchall_offload {int cookie; } ;
struct mlxsw_sp_port_mall_tc_entry {int type; int mirror; int list; } ;
struct mlxsw_sp_port {int dev; } ;




 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_port_mall_tc_entry*) ;
 int list_del (int *) ;
 int mlxsw_sp_port_del_cls_matchall_mirror (struct mlxsw_sp_port*,int *) ;
 int mlxsw_sp_port_del_cls_matchall_sample (struct mlxsw_sp_port*) ;
 struct mlxsw_sp_port_mall_tc_entry* mlxsw_sp_port_mall_tc_entry_find (struct mlxsw_sp_port*,int ) ;
 int netdev_dbg (int ,char*) ;

__attribute__((used)) static void mlxsw_sp_port_del_cls_matchall(struct mlxsw_sp_port *mlxsw_sp_port,
        struct tc_cls_matchall_offload *f)
{
 struct mlxsw_sp_port_mall_tc_entry *mall_tc_entry;

 mall_tc_entry = mlxsw_sp_port_mall_tc_entry_find(mlxsw_sp_port,
        f->cookie);
 if (!mall_tc_entry) {
  netdev_dbg(mlxsw_sp_port->dev, "tc entry not found on port\n");
  return;
 }
 list_del(&mall_tc_entry->list);

 switch (mall_tc_entry->type) {
 case 129:
  mlxsw_sp_port_del_cls_matchall_mirror(mlxsw_sp_port,
            &mall_tc_entry->mirror);
  break;
 case 128:
  mlxsw_sp_port_del_cls_matchall_sample(mlxsw_sp_port);
  break;
 default:
  WARN_ON(1);
 }

 kfree(mall_tc_entry);
}
