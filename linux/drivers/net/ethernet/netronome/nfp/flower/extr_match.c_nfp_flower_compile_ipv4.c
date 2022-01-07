
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_flower_ipv4 {int ip_ext; int ipv4_dst; int ipv4_src; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv4_addrs {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int dst; int src; } ;


 int FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_ipv4_addrs (struct flow_rule*,struct flow_match_ipv4_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int memset (struct nfp_flower_ipv4*,int ,int) ;
 int nfp_flower_compile_ip_ext (int *,int *,struct flow_cls_offload*) ;

__attribute__((used)) static void
nfp_flower_compile_ipv4(struct nfp_flower_ipv4 *ext,
   struct nfp_flower_ipv4 *msk,
   struct flow_cls_offload *flow)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(flow);
 struct flow_match_ipv4_addrs match;

 memset(ext, 0, sizeof(struct nfp_flower_ipv4));
 memset(msk, 0, sizeof(struct nfp_flower_ipv4));

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IPV4_ADDRS)) {
  flow_rule_match_ipv4_addrs(rule, &match);
  ext->ipv4_src = match.key->src;
  ext->ipv4_dst = match.key->dst;
  msk->ipv4_src = match.mask->src;
  msk->ipv4_dst = match.mask->dst;
 }

 nfp_flower_compile_ip_ext(&ext->ip_ext, &msk->ip_ext, flow);
}
