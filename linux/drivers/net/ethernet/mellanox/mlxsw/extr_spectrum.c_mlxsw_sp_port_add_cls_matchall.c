
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; } ;
struct tc_cls_matchall_offload {TYPE_2__* rule; int cookie; TYPE_1__ common; } ;
struct mlxsw_sp_port_mall_mirror_tc_entry {int dummy; } ;
struct mlxsw_sp_port_mall_tc_entry {int list; int type; struct mlxsw_sp_port_mall_mirror_tc_entry mirror; int cookie; } ;
struct mlxsw_sp_port {int mall_tc_list; int dev; } ;
struct flow_action_entry {scalar_t__ id; } ;
typedef scalar_t__ __be16 ;
struct TYPE_6__ {struct flow_action_entry* entries; } ;
struct TYPE_5__ {TYPE_3__ action; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_P_ALL ;
 scalar_t__ FLOW_ACTION_MIRRED ;
 scalar_t__ FLOW_ACTION_SAMPLE ;
 int GFP_KERNEL ;
 int MLXSW_SP_PORT_MALL_MIRROR ;
 int MLXSW_SP_PORT_MALL_SAMPLE ;
 int flow_offload_has_one_action (TYPE_3__*) ;
 scalar_t__ htons (int ) ;
 int kfree (struct mlxsw_sp_port_mall_tc_entry*) ;
 struct mlxsw_sp_port_mall_tc_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlxsw_sp_port_add_cls_matchall_mirror (struct mlxsw_sp_port*,struct mlxsw_sp_port_mall_mirror_tc_entry*,struct flow_action_entry*,int) ;
 int mlxsw_sp_port_add_cls_matchall_sample (struct mlxsw_sp_port*,struct tc_cls_matchall_offload*,struct flow_action_entry*,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int mlxsw_sp_port_add_cls_matchall(struct mlxsw_sp_port *mlxsw_sp_port,
       struct tc_cls_matchall_offload *f,
       bool ingress)
{
 struct mlxsw_sp_port_mall_tc_entry *mall_tc_entry;
 __be16 protocol = f->common.protocol;
 struct flow_action_entry *act;
 int err;

 if (!flow_offload_has_one_action(&f->rule->action)) {
  netdev_err(mlxsw_sp_port->dev, "only singular actions are supported\n");
  return -EOPNOTSUPP;
 }

 mall_tc_entry = kzalloc(sizeof(*mall_tc_entry), GFP_KERNEL);
 if (!mall_tc_entry)
  return -ENOMEM;
 mall_tc_entry->cookie = f->cookie;

 act = &f->rule->action.entries[0];

 if (act->id == FLOW_ACTION_MIRRED && protocol == htons(ETH_P_ALL)) {
  struct mlxsw_sp_port_mall_mirror_tc_entry *mirror;

  mall_tc_entry->type = MLXSW_SP_PORT_MALL_MIRROR;
  mirror = &mall_tc_entry->mirror;
  err = mlxsw_sp_port_add_cls_matchall_mirror(mlxsw_sp_port,
           mirror, act,
           ingress);
 } else if (act->id == FLOW_ACTION_SAMPLE &&
     protocol == htons(ETH_P_ALL)) {
  mall_tc_entry->type = MLXSW_SP_PORT_MALL_SAMPLE;
  err = mlxsw_sp_port_add_cls_matchall_sample(mlxsw_sp_port, f,
           act, ingress);
 } else {
  err = -EOPNOTSUPP;
 }

 if (err)
  goto err_add_action;

 list_add_tail(&mall_tc_entry->list, &mlxsw_sp_port->mall_tc_list);
 return 0;

err_add_action:
 kfree(mall_tc_entry);
 return err;
}
