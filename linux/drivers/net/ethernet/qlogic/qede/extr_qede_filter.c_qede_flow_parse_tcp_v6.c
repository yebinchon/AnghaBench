
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int eth_proto; int ip_proto; } ;
struct flow_rule {int dummy; } ;


 int ETH_P_IPV6 ;
 int IPPROTO_TCP ;
 int htons (int ) ;
 int qede_flow_parse_v6_common (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ;

__attribute__((used)) static int
qede_flow_parse_tcp_v6(struct qede_dev *edev, struct flow_rule *rule,
       struct qede_arfs_tuple *tuple)
{
 tuple->ip_proto = IPPROTO_TCP;
 tuple->eth_proto = htons(ETH_P_IPV6);

 return qede_flow_parse_v6_common(edev, rule, tuple);
}
