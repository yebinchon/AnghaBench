
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_rule {int dummy; } ;
struct flow_cls_offload {int dummy; } ;


 int FLOW_DISSECTOR_KEY_ICMP ;
 int FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 int FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 int FLOW_DISSECTOR_KEY_PORTS ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;

__attribute__((used)) static bool nfp_flower_check_higher_than_mac(struct flow_cls_offload *f)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);

 return flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IPV4_ADDRS) ||
        flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IPV6_ADDRS) ||
        flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS) ||
        flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ICMP);
}
