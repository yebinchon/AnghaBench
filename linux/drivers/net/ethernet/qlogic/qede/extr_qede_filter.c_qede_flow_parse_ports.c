
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {scalar_t__ dst_port; scalar_t__ src_port; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_1__* key; TYPE_2__* mask; } ;
struct TYPE_4__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_3__ {scalar_t__ dst; scalar_t__ src; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int EINVAL ;
 int FLOW_DISSECTOR_KEY_PORTS ;
 scalar_t__ U16_MAX ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int flow_rule_match_ports (struct flow_rule*,struct flow_match_ports*) ;

__attribute__((used)) static int
qede_flow_parse_ports(struct qede_dev *edev, struct flow_rule *rule,
        struct qede_arfs_tuple *t)
{
 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
  struct flow_match_ports match;

  flow_rule_match_ports(rule, &match);
  if ((match.key->src && match.mask->src != U16_MAX) ||
      (match.key->dst && match.mask->dst != U16_MAX)) {
   DP_NOTICE(edev, "Do not support ports masks\n");
   return -EINVAL;
  }

  t->src_port = match.key->src;
  t->dst_port = match.key->dst;
 }

 return 0;
}
