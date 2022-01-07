
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len_lw; int jump_id; } ;
struct nfp_fl_pop_mpls {int ethtype; TYPE_1__ head; } ;
struct TYPE_4__ {int proto; } ;
struct flow_action_entry {TYPE_2__ mpls_pop; } ;


 int NFP_FL_ACTION_OPCODE_POP_MPLS ;
 size_t NFP_FL_LW_SIZ ;

__attribute__((used)) static void
nfp_fl_pop_mpls(struct nfp_fl_pop_mpls *pop_mpls,
  const struct flow_action_entry *act)
{
 size_t act_size = sizeof(struct nfp_fl_pop_mpls);

 pop_mpls->head.jump_id = NFP_FL_ACTION_OPCODE_POP_MPLS;
 pop_mpls->head.len_lw = act_size >> NFP_FL_LW_SIZ;
 pop_mpls->ethtype = act->mpls_pop.proto;
}
