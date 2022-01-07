
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pedit_headers_action {int pedits; } ;
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {int dummy; } ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_2__ {scalar_t__ htype; int offset; int val; int mask; } ;
struct flow_action_entry {scalar_t__ id; TYPE_1__ mangle; } ;


 int EOPNOTSUPP ;
 scalar_t__ FLOW_ACTION_MANGLE ;
 scalar_t__ FLOW_ACT_MANGLE_UNSPEC ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int mlx5e_flow_namespace_max_modify_action (int ,int) ;
 int set_pedit_val (scalar_t__,int ,int ,int ,struct pedit_headers_action*) ;

__attribute__((used)) static int parse_tc_pedit_action(struct mlx5e_priv *priv,
     const struct flow_action_entry *act, int namespace,
     struct mlx5e_tc_flow_parse_attr *parse_attr,
     struct pedit_headers_action *hdrs,
     struct netlink_ext_ack *extack)
{
 u8 cmd = (act->id == FLOW_ACTION_MANGLE) ? 0 : 1;
 int err = -EOPNOTSUPP;
 u32 mask, val, offset;
 u8 htype;

 htype = act->mangle.htype;
 err = -EOPNOTSUPP;

 if (htype == FLOW_ACT_MANGLE_UNSPEC) {
  NL_SET_ERR_MSG_MOD(extack, "legacy pedit isn't offloaded");
  goto out_err;
 }

 if (!mlx5e_flow_namespace_max_modify_action(priv->mdev, namespace)) {
  NL_SET_ERR_MSG_MOD(extack,
       "The pedit offload action is not supported");
  goto out_err;
 }

 mask = act->mangle.mask;
 val = act->mangle.val;
 offset = act->mangle.offset;

 err = set_pedit_val(htype, ~mask, val, offset, &hdrs[cmd]);
 if (err)
  goto out_err;

 hdrs[cmd].pedits++;

 return 0;
out_err:
 return err;
}
