
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {size_t len_lw; int jump_id; } ;
struct nfp_fl_push_vlan {int vlan_tci; int vlan_tpid; scalar_t__ reserved; TYPE_2__ head; } ;
struct TYPE_3__ {int vid; int prio; int proto; } ;
struct flow_action_entry {TYPE_1__ vlan; } ;


 int FIELD_PREP (int ,int ) ;
 int NFP_FL_ACTION_OPCODE_PUSH_VLAN ;
 size_t NFP_FL_LW_SIZ ;
 int NFP_FL_PUSH_VLAN_PRIO ;
 int NFP_FL_PUSH_VLAN_VID ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static void
nfp_fl_push_vlan(struct nfp_fl_push_vlan *push_vlan,
   const struct flow_action_entry *act)
{
 size_t act_size = sizeof(struct nfp_fl_push_vlan);
 u16 tmp_push_vlan_tci;

 push_vlan->head.jump_id = NFP_FL_ACTION_OPCODE_PUSH_VLAN;
 push_vlan->head.len_lw = act_size >> NFP_FL_LW_SIZ;
 push_vlan->reserved = 0;
 push_vlan->vlan_tpid = act->vlan.proto;

 tmp_push_vlan_tci =
  FIELD_PREP(NFP_FL_PUSH_VLAN_PRIO, act->vlan.prio) |
  FIELD_PREP(NFP_FL_PUSH_VLAN_VID, act->vlan.vid);
 push_vlan->vlan_tci = cpu_to_be16(tmp_push_vlan_tci);
}
