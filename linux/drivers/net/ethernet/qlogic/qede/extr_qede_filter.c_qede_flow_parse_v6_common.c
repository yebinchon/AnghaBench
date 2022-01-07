
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int dst_ipv6; int src_ipv6; } ;
struct in6_addr {int dummy; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv6_addrs {TYPE_2__* key; TYPE_1__* mask; } ;
typedef int addr ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int dst; int src; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int EINVAL ;
 int FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 int flow_rule_match_ipv6_addrs (struct flow_rule*,struct flow_match_ipv6_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 scalar_t__ memcmp (int *,struct in6_addr*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct in6_addr*,int,int) ;
 scalar_t__ qede_flow_parse_ports (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ;
 int qede_set_v6_tuple_to_profile (struct qede_dev*,struct qede_arfs_tuple*,struct in6_addr*) ;

__attribute__((used)) static int
qede_flow_parse_v6_common(struct qede_dev *edev, struct flow_rule *rule,
     struct qede_arfs_tuple *t)
{
 struct in6_addr zero_addr, addr;

 memset(&zero_addr, 0, sizeof(addr));
 memset(&addr, 0xff, sizeof(addr));

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IPV6_ADDRS)) {
  struct flow_match_ipv6_addrs match;

  flow_rule_match_ipv6_addrs(rule, &match);
  if ((memcmp(&match.key->src, &zero_addr, sizeof(addr)) &&
       memcmp(&match.mask->src, &addr, sizeof(addr))) ||
      (memcmp(&match.key->dst, &zero_addr, sizeof(addr)) &&
       memcmp(&match.mask->dst, &addr, sizeof(addr)))) {
   DP_NOTICE(edev,
      "Do not support IPv6 address prefix/mask\n");
   return -EINVAL;
  }

  memcpy(&t->src_ipv6, &match.key->src, sizeof(addr));
  memcpy(&t->dst_ipv6, &match.key->dst, sizeof(addr));
 }

 if (qede_flow_parse_ports(edev, rule, t))
  return -EINVAL;

 return qede_set_v6_tuple_to_profile(edev, t, &zero_addr);
}
