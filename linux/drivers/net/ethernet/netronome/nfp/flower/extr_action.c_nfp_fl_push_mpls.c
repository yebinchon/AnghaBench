
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {size_t len_lw; int jump_id; } ;
struct nfp_fl_push_mpls {int lse; int ethtype; TYPE_1__ head; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int bos; int tc; int label; int ttl; int proto; } ;
struct flow_action_entry {TYPE_2__ mpls_push; } ;


 int ACT_MPLS_BOS_NOT_SET ;
 int ACT_MPLS_TC_NOT_SET ;
 int EOPNOTSUPP ;
 int MPLS_LS_LABEL_SHIFT ;
 int MPLS_LS_S_SHIFT ;
 int MPLS_LS_TC_SHIFT ;
 int MPLS_LS_TTL_SHIFT ;
 int NFP_FL_ACTION_OPCODE_PUSH_MPLS ;
 size_t NFP_FL_LW_SIZ ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static int
nfp_fl_push_mpls(struct nfp_fl_push_mpls *push_mpls,
   const struct flow_action_entry *act,
   struct netlink_ext_ack *extack)
{
 size_t act_size = sizeof(struct nfp_fl_push_mpls);
 u32 mpls_lse = 0;

 push_mpls->head.jump_id = NFP_FL_ACTION_OPCODE_PUSH_MPLS;
 push_mpls->head.len_lw = act_size >> NFP_FL_LW_SIZ;


 if (act->mpls_push.bos != ACT_MPLS_BOS_NOT_SET) {
  mpls_lse |= act->mpls_push.bos << MPLS_LS_S_SHIFT;
 } else {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: BOS field must explicitly be set for MPLS push");
  return -EOPNOTSUPP;
 }


 if (act->mpls_push.tc != ACT_MPLS_TC_NOT_SET)
  mpls_lse |= act->mpls_push.tc << MPLS_LS_TC_SHIFT;


 mpls_lse |= act->mpls_push.label << MPLS_LS_LABEL_SHIFT;
 mpls_lse |= act->mpls_push.ttl << MPLS_LS_TTL_SHIFT;
 push_mpls->ethtype = act->mpls_push.proto;
 push_mpls->lse = cpu_to_be32(mpls_lse);

 return 0;
}
