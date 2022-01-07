
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_flower_pedit_acts {int set_tport; int set_ip6_tc_hl_fl; int set_ip6_src; int set_ip6_dst; int set_ip_ttl_tos; int set_ip_addr; int set_eth; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_2__ {int htype; int offset; } ;
struct flow_action_entry {TYPE_1__ mangle; } ;
typedef enum flow_action_mangle_base { ____Placeholder_flow_action_mangle_base } flow_action_mangle_base ;


 int EOPNOTSUPP ;
 int NFP_FL_ACTION_OPCODE_SET_TCP ;
 int NFP_FL_ACTION_OPCODE_SET_UDP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;





 int nfp_fl_set_eth (struct flow_action_entry const*,int ,int *,struct netlink_ext_ack*) ;
 int nfp_fl_set_ip4 (struct flow_action_entry const*,int ,int *,int *,struct netlink_ext_ack*) ;
 int nfp_fl_set_ip6 (struct flow_action_entry const*,int ,int *,int *,int *,struct netlink_ext_ack*) ;
 int nfp_fl_set_tport (struct flow_action_entry const*,int ,int *,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int
nfp_fl_pedit(const struct flow_action_entry *act,
      struct flow_cls_offload *flow, char *nfp_action, int *a_len,
      u32 *csum_updated, struct nfp_flower_pedit_acts *set_act,
      struct netlink_ext_ack *extack)
{
 enum flow_action_mangle_base htype;
 u32 offset;

 htype = act->mangle.htype;
 offset = act->mangle.offset;

 switch (htype) {
 case 132:
  return nfp_fl_set_eth(act, offset, &set_act->set_eth, extack);
 case 131:
  return nfp_fl_set_ip4(act, offset, &set_act->set_ip_addr,
          &set_act->set_ip_ttl_tos, extack);
 case 130:
  return nfp_fl_set_ip6(act, offset, &set_act->set_ip6_dst,
          &set_act->set_ip6_src,
          &set_act->set_ip6_tc_hl_fl, extack);
 case 129:
  return nfp_fl_set_tport(act, offset, &set_act->set_tport,
     NFP_FL_ACTION_OPCODE_SET_TCP, extack);
 case 128:
  return nfp_fl_set_tport(act, offset, &set_act->set_tport,
     NFP_FL_ACTION_OPCODE_SET_UDP, extack);
 default:
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: pedit on unsupported header");
  return -EOPNOTSUPP;
 }
}
