
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_flower_tp_ports {int port_dst; int port_src; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int dst; int src; } ;


 int FLOW_DISSECTOR_KEY_PORTS ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int flow_rule_match_ports (struct flow_rule*,struct flow_match_ports*) ;
 int memset (struct nfp_flower_tp_ports*,int ,int) ;

__attribute__((used)) static void
nfp_flower_compile_tport(struct nfp_flower_tp_ports *ext,
    struct nfp_flower_tp_ports *msk,
    struct flow_cls_offload *flow)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(flow);

 memset(ext, 0, sizeof(struct nfp_flower_tp_ports));
 memset(msk, 0, sizeof(struct nfp_flower_tp_ports));

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
  struct flow_match_ports match;

  flow_rule_match_ports(rule, &match);
  ext->port_src = match.key->src;
  ext->port_dst = match.key->dst;
  msk->port_src = match.mask->src;
  msk->port_dst = match.mask->dst;
 }
}
