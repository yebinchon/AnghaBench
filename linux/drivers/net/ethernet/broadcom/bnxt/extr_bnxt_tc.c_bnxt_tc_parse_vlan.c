
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; int vid; } ;
struct flow_action_entry {int id; TYPE_1__ vlan; } ;
struct bnxt_tc_actions {int push_vlan_tpid; int push_vlan_tci; int flags; } ;
struct bnxt {int dummy; } ;


 int BNXT_TC_ACTION_FLAG_POP_VLAN ;
 int BNXT_TC_ACTION_FLAG_PUSH_VLAN ;
 int EOPNOTSUPP ;


 int htons (int ) ;

__attribute__((used)) static int bnxt_tc_parse_vlan(struct bnxt *bp,
         struct bnxt_tc_actions *actions,
         const struct flow_action_entry *act)
{
 switch (act->id) {
 case 129:
  actions->flags |= BNXT_TC_ACTION_FLAG_POP_VLAN;
  break;
 case 128:
  actions->flags |= BNXT_TC_ACTION_FLAG_PUSH_VLAN;
  actions->push_vlan_tci = htons(act->vlan.vid);
  actions->push_vlan_tpid = act->vlan.proto;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
