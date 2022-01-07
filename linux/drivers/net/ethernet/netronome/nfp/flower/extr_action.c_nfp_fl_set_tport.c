
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int jump_id; int len_lw; } ;
struct nfp_fl_set_tport {TYPE_1__ head; int reserved; int tp_port_mask; int tp_port_val; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int mask; int val; } ;
struct flow_action_entry {TYPE_2__ mangle; } ;


 int EOPNOTSUPP ;
 int NFP_FL_LW_SIZ ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int cpu_to_be16 (int ) ;
 int nfp_fl_set_helper32 (int,int,int ,int ) ;

__attribute__((used)) static int
nfp_fl_set_tport(const struct flow_action_entry *act, u32 off,
   struct nfp_fl_set_tport *set_tport, int opcode,
   struct netlink_ext_ack *extack)
{
 u32 exact, mask;

 if (off) {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: pedit on unsupported section of L4 header");
  return -EOPNOTSUPP;
 }

 mask = ~act->mangle.mask;
 exact = act->mangle.val;

 if (exact & ~mask) {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: invalid pedit L4 action");
  return -EOPNOTSUPP;
 }

 nfp_fl_set_helper32(exact, mask, set_tport->tp_port_val,
       set_tport->tp_port_mask);

 set_tport->reserved = cpu_to_be16(0);
 set_tport->head.jump_id = opcode;
 set_tport->head.len_lw = sizeof(*set_tport) >> NFP_FL_LW_SIZ;

 return 0;
}
