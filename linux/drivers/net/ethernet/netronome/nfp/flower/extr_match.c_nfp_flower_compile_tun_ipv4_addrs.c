
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_flower_tun_ipv4 {int dst; int src; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv4_addrs {TYPE_1__* mask; TYPE_2__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int dst; int src; } ;


 int FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_enc_ipv4_addrs (struct flow_rule*,struct flow_match_ipv4_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;

__attribute__((used)) static void
nfp_flower_compile_tun_ipv4_addrs(struct nfp_flower_tun_ipv4 *ext,
      struct nfp_flower_tun_ipv4 *msk,
      struct flow_cls_offload *flow)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(flow);

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS)) {
  struct flow_match_ipv4_addrs match;

  flow_rule_match_enc_ipv4_addrs(rule, &match);
  ext->src = match.key->src;
  ext->dst = match.key->dst;
  msk->src = match.mask->src;
  msk->dst = match.mask->dst;
 }
}
