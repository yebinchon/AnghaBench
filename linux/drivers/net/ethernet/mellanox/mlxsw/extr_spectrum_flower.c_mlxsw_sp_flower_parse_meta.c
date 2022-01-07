
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_port {scalar_t__ mlxsw_sp; int local_port; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp_acl_block {scalar_t__ mlxsw_sp; int net; } ;
struct flow_rule {int dummy; } ;
struct flow_match_meta {TYPE_2__* key; TYPE_1__* mask; } ;
struct TYPE_6__ {int extack; } ;
struct flow_cls_offload {TYPE_3__ common; } ;
struct TYPE_5__ {int ingress_ifindex; } ;
struct TYPE_4__ {int ingress_ifindex; } ;


 int EINVAL ;
 int FLOW_DISSECTOR_KEY_META ;
 int MLXSW_AFK_ELEMENT_SRC_SYS_PORT ;
 int NL_SET_ERR_MSG_MOD (int ,char*) ;
 struct net_device* __dev_get_by_index (int ,int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_key (struct flow_rule*,int ) ;
 int flow_rule_match_meta (struct flow_rule*,struct flow_match_meta*) ;
 int mlxsw_sp_acl_rulei_keymask_u32 (struct mlxsw_sp_acl_rule_info*,int ,int ,int) ;
 int mlxsw_sp_port_dev_check (struct net_device*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
          struct flow_cls_offload *f,
          struct mlxsw_sp_acl_block *block)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct mlxsw_sp_port *mlxsw_sp_port;
 struct net_device *ingress_dev;
 struct flow_match_meta match;

 if (!flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_META))
  return 0;

 flow_rule_match_meta(rule, &match);
 if (match.mask->ingress_ifindex != 0xFFFFFFFF) {
  NL_SET_ERR_MSG_MOD(f->common.extack, "Unsupported ingress ifindex mask");
  return -EINVAL;
 }

 ingress_dev = __dev_get_by_index(block->net,
      match.key->ingress_ifindex);
 if (!ingress_dev) {
  NL_SET_ERR_MSG_MOD(f->common.extack, "Can't find specified ingress port to match on");
  return -EINVAL;
 }

 if (!mlxsw_sp_port_dev_check(ingress_dev)) {
  NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on non-mlxsw ingress port");
  return -EINVAL;
 }

 mlxsw_sp_port = netdev_priv(ingress_dev);
 if (mlxsw_sp_port->mlxsw_sp != block->mlxsw_sp) {
  NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on a port from different device");
  return -EINVAL;
 }

 mlxsw_sp_acl_rulei_keymask_u32(rulei,
           MLXSW_AFK_ELEMENT_SRC_SYS_PORT,
           mlxsw_sp_port->local_port,
           0xFFFFFFFF);
 return 0;
}
