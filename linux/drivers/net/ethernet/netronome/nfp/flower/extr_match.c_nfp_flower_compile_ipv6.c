
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_flower_ipv6 {int ip_ext; int ipv6_dst; int ipv6_src; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv6_addrs {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int dst; int src; } ;


 int FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_ipv6_addrs (struct flow_rule*,struct flow_match_ipv6_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int memset (struct nfp_flower_ipv6*,int ,int) ;
 int nfp_flower_compile_ip_ext (int *,int *,struct flow_cls_offload*) ;

__attribute__((used)) static void
nfp_flower_compile_ipv6(struct nfp_flower_ipv6 *ext,
   struct nfp_flower_ipv6 *msk,
   struct flow_cls_offload *flow)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(flow);

 memset(ext, 0, sizeof(struct nfp_flower_ipv6));
 memset(msk, 0, sizeof(struct nfp_flower_ipv6));

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IPV6_ADDRS)) {
  struct flow_match_ipv6_addrs match;

  flow_rule_match_ipv6_addrs(rule, &match);
  ext->ipv6_src = match.key->src;
  ext->ipv6_dst = match.key->dst;
  msk->ipv6_src = match.mask->src;
  msk->ipv6_dst = match.mask->dst;
 }

 nfp_flower_compile_ip_ext(&ext->ip_ext, &msk->ip_ext, flow);
}
