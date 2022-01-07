
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_ip {TYPE_4__* mask; } ;
struct flow_match_basic {TYPE_3__* mask; TYPE_2__* key; } ;
struct flow_dissector {int used_keys; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_8__ {scalar_t__ ttl; } ;
struct TYPE_7__ {int n_proto; } ;
struct TYPE_6__ {int n_proto; } ;


 int BIT (int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 int FLOW_DISSECTOR_KEY_BASIC ;
 int FLOW_DISSECTOR_KEY_CONTROL ;
 int FLOW_DISSECTOR_KEY_ENC_KEYID ;
 int FLOW_DISSECTOR_KEY_IP ;
 int FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 int FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 int FLOW_DISSECTOR_KEY_PORTS ;
 int FLOW_DISSECTOR_KEY_VLAN ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_basic (struct flow_rule*,struct flow_match_basic*) ;
 int flow_rule_match_ip (struct flow_rule*,struct flow_match_ip*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*,...) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int cxgb4_validate_flow_match(struct net_device *dev,
         struct flow_cls_offload *cls)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(cls);
 struct flow_dissector *dissector = rule->match.dissector;
 u16 ethtype_mask = 0;
 u16 ethtype_key = 0;

 if (dissector->used_keys &
     ~(BIT(FLOW_DISSECTOR_KEY_CONTROL) |
       BIT(FLOW_DISSECTOR_KEY_BASIC) |
       BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
       BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
       BIT(FLOW_DISSECTOR_KEY_PORTS) |
       BIT(FLOW_DISSECTOR_KEY_ENC_KEYID) |
       BIT(FLOW_DISSECTOR_KEY_VLAN) |
       BIT(FLOW_DISSECTOR_KEY_IP))) {
  netdev_warn(dev, "Unsupported key used: 0x%x\n",
       dissector->used_keys);
  return -EOPNOTSUPP;
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
  struct flow_match_basic match;

  flow_rule_match_basic(rule, &match);
  ethtype_key = ntohs(match.key->n_proto);
  ethtype_mask = ntohs(match.mask->n_proto);
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IP)) {
  u16 eth_ip_type = ethtype_key & ethtype_mask;
  struct flow_match_ip match;

  if (eth_ip_type != ETH_P_IP && eth_ip_type != ETH_P_IPV6) {
   netdev_err(dev, "IP Key supported only with IPv4/v6");
   return -EINVAL;
  }

  flow_rule_match_ip(rule, &match);
  if (match.mask->ttl) {
   netdev_warn(dev, "ttl match unsupported for offload");
   return -EOPNOTSUPP;
  }
 }

 return 0;
}
