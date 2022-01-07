
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_dpipe_action {int field_id; int * header; int type; int member_0; } ;


 int DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY ;
 int DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC ;
 int devlink_dpipe_action_put (struct sk_buff*,struct devlink_dpipe_action*) ;
 int devlink_dpipe_header_ethernet ;

__attribute__((used)) static int
mlxsw_sp_dpipe_table_host_actions_dump(void *priv, struct sk_buff *skb)
{
 struct devlink_dpipe_action action = {0};

 action.type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action.header = &devlink_dpipe_header_ethernet;
 action.field_id = DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC;

 return devlink_dpipe_action_put(skb, &action);
}
