
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {int dummy; } ;
struct stmmac_flow_entry {int ip_proto; } ;
struct TYPE_3__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_basic {TYPE_2__* key; } ;
struct flow_dissector {int dummy; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int ip_proto; } ;


 int EINVAL ;
 int FLOW_DISSECTOR_KEY_BASIC ;
 int dissector_uses_key (struct flow_dissector*,int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_basic (struct flow_rule*,struct flow_match_basic*) ;

__attribute__((used)) static int tc_add_basic_flow(struct stmmac_priv *priv,
        struct flow_cls_offload *cls,
        struct stmmac_flow_entry *entry)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(cls);
 struct flow_dissector *dissector = rule->match.dissector;
 struct flow_match_basic match;


 if (!dissector_uses_key(dissector, FLOW_DISSECTOR_KEY_BASIC))
  return -EINVAL;

 flow_rule_match_basic(rule, &match);
 entry->ip_proto = match.key->ip_proto;
 return 0;
}
