
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_17__ {int vlan_tci; int match_flags; int etype; int src_addr; int dst_addr; } ;
struct igb_nfc_filter {int action; int cookie; TYPE_8__ filter; } ;
struct igb_adapter {int dummy; } ;
struct TYPE_10__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_vlan {TYPE_9__* key; TYPE_7__* mask; } ;
struct flow_match_eth_addrs {TYPE_4__* key; TYPE_3__* mask; } ;
struct flow_match_basic {TYPE_6__* key; TYPE_5__* mask; } ;
struct flow_dissector {int used_keys; } ;
struct TYPE_11__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int cookie; TYPE_2__ common; } ;
struct TYPE_18__ {int vlan_priority; } ;
struct TYPE_16__ {scalar_t__ vlan_priority; } ;
struct TYPE_15__ {int n_proto; } ;
struct TYPE_14__ {scalar_t__ n_proto; } ;
struct TYPE_13__ {int src; int dst; } ;
struct TYPE_12__ {int src; int dst; } ;


 int BIT (int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ETHER_TYPE_FULL_MASK ;
 int FLOW_DISSECTOR_KEY_BASIC ;
 int FLOW_DISSECTOR_KEY_CONTROL ;
 int FLOW_DISSECTOR_KEY_ETH_ADDRS ;
 int FLOW_DISSECTOR_KEY_VLAN ;
 int IGB_FILTER_FLAG_DST_MAC_ADDR ;
 int IGB_FILTER_FLAG_ETHER_TYPE ;
 int IGB_FILTER_FLAG_SRC_MAC_ADDR ;
 int IGB_FILTER_FLAG_VLAN_TCI ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 scalar_t__ VLAN_PRIO_FULL_MASK ;
 int ether_addr_copy (int ,int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_basic (struct flow_rule*,struct flow_match_basic*) ;
 int flow_rule_match_eth_addrs (struct flow_rule*,struct flow_match_eth_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int flow_rule_match_vlan (struct flow_rule*,struct flow_match_vlan*) ;
 int is_broadcast_ether_addr (int ) ;
 int is_zero_ether_addr (int ) ;

__attribute__((used)) static int igb_parse_cls_flower(struct igb_adapter *adapter,
    struct flow_cls_offload *f,
    int traffic_class,
    struct igb_nfc_filter *input)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct flow_dissector *dissector = rule->match.dissector;
 struct netlink_ext_ack *extack = f->common.extack;

 if (dissector->used_keys &
     ~(BIT(FLOW_DISSECTOR_KEY_BASIC) |
       BIT(FLOW_DISSECTOR_KEY_CONTROL) |
       BIT(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
       BIT(FLOW_DISSECTOR_KEY_VLAN))) {
  NL_SET_ERR_MSG_MOD(extack,
       "Unsupported key used, only BASIC, CONTROL, ETH_ADDRS and VLAN are supported");
  return -EOPNOTSUPP;
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
  struct flow_match_eth_addrs match;

  flow_rule_match_eth_addrs(rule, &match);
  if (!is_zero_ether_addr(match.mask->dst)) {
   if (!is_broadcast_ether_addr(match.mask->dst)) {
    NL_SET_ERR_MSG_MOD(extack, "Only full masks are supported for destination MAC address");
    return -EINVAL;
   }

   input->filter.match_flags |=
    IGB_FILTER_FLAG_DST_MAC_ADDR;
   ether_addr_copy(input->filter.dst_addr, match.key->dst);
  }

  if (!is_zero_ether_addr(match.mask->src)) {
   if (!is_broadcast_ether_addr(match.mask->src)) {
    NL_SET_ERR_MSG_MOD(extack, "Only full masks are supported for source MAC address");
    return -EINVAL;
   }

   input->filter.match_flags |=
    IGB_FILTER_FLAG_SRC_MAC_ADDR;
   ether_addr_copy(input->filter.src_addr, match.key->src);
  }
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
  struct flow_match_basic match;

  flow_rule_match_basic(rule, &match);
  if (match.mask->n_proto) {
   if (match.mask->n_proto != ETHER_TYPE_FULL_MASK) {
    NL_SET_ERR_MSG_MOD(extack, "Only full mask is supported for EtherType filter");
    return -EINVAL;
   }

   input->filter.match_flags |= IGB_FILTER_FLAG_ETHER_TYPE;
   input->filter.etype = match.key->n_proto;
  }
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_VLAN)) {
  struct flow_match_vlan match;

  flow_rule_match_vlan(rule, &match);
  if (match.mask->vlan_priority) {
   if (match.mask->vlan_priority != VLAN_PRIO_FULL_MASK) {
    NL_SET_ERR_MSG_MOD(extack, "Only full mask is supported for VLAN priority");
    return -EINVAL;
   }

   input->filter.match_flags |= IGB_FILTER_FLAG_VLAN_TCI;
   input->filter.vlan_tci = match.key->vlan_priority;
  }
 }

 input->action = traffic_class;
 input->cookie = f->cookie;

 return 0;
}
