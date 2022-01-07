
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_dpipe_action {int field_id; int * header; void* type; int member_0; } ;


 void* DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_L3_DROP ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD ;
 int devlink_dpipe_action_put (struct sk_buff*,struct devlink_dpipe_action*) ;
 int mlxsw_sp_dpipe_header_metadata ;

__attribute__((used)) static int mlxsw_sp_dpipe_table_erif_actions_dump(void *priv,
        struct sk_buff *skb)
{
 struct devlink_dpipe_action action = {0};
 int err;

 action.type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action.header = &mlxsw_sp_dpipe_header_metadata;
 action.field_id = MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD;

 err = devlink_dpipe_action_put(skb, &action);
 if (err)
  return err;

 action.type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action.header = &mlxsw_sp_dpipe_header_metadata;
 action.field_id = MLXSW_SP_DPIPE_FIELD_METADATA_L3_DROP;

 return devlink_dpipe_action_put(skb, &action);
}
