
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {int hw; } ;
struct stmmac_flow_entry {int action; int idx; } ;
struct TYPE_4__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_ipv4_addrs {TYPE_3__* mask; TYPE_2__* key; } ;
struct flow_dissector {int dummy; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_6__ {int dst; int src; } ;
struct TYPE_5__ {int dst; int src; } ;


 int EINVAL ;
 int FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 int STMMAC_FLOW_ACTION_DROP ;
 int dissector_uses_key (struct flow_dissector*,int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_ipv4_addrs (struct flow_rule*,struct flow_match_ipv4_addrs*) ;
 int ntohl (int ) ;
 int stmmac_config_l3_filter (struct stmmac_priv*,int ,int ,int,int,int,int,int) ;

__attribute__((used)) static int tc_add_ip4_flow(struct stmmac_priv *priv,
      struct flow_cls_offload *cls,
      struct stmmac_flow_entry *entry)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(cls);
 struct flow_dissector *dissector = rule->match.dissector;
 bool inv = entry->action & STMMAC_FLOW_ACTION_DROP;
 struct flow_match_ipv4_addrs match;
 u32 hw_match;
 int ret;


 if (!dissector_uses_key(dissector, FLOW_DISSECTOR_KEY_IPV4_ADDRS))
  return -EINVAL;

 flow_rule_match_ipv4_addrs(rule, &match);
 hw_match = ntohl(match.key->src) & ntohl(match.mask->src);
 if (hw_match) {
  ret = stmmac_config_l3_filter(priv, priv->hw, entry->idx, 1,
           0, 1, inv, hw_match);
  if (ret)
   return ret;
 }

 hw_match = ntohl(match.key->dst) & ntohl(match.mask->dst);
 if (hw_match) {
  ret = stmmac_config_l3_filter(priv, priv->hw, entry->idx, 1,
           0, 0, inv, hw_match);
  if (ret)
   return ret;
 }

 return 0;
}
