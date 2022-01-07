
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len_lw; int jump_id; } ;
struct nfp_fl_pop_vlan {scalar_t__ reserved; TYPE_1__ head; } ;


 int NFP_FL_ACTION_OPCODE_POP_VLAN ;
 size_t NFP_FL_LW_SIZ ;

__attribute__((used)) static void nfp_fl_pop_vlan(struct nfp_fl_pop_vlan *pop_vlan)
{
 size_t act_size = sizeof(struct nfp_fl_pop_vlan);

 pop_vlan->head.jump_id = NFP_FL_ACTION_OPCODE_POP_VLAN;
 pop_vlan->head.len_lw = act_size >> NFP_FL_LW_SIZ;
 pop_vlan->reserved = 0;
}
