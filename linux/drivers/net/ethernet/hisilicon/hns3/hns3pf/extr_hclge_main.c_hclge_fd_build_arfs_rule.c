
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_fd_rule_tuples {scalar_t__ ether_proto; scalar_t__ ip_proto; } ;
struct hclge_fd_rule {int unused_tuple; int tuples_mask; int tuples; int flow_type; int rule_type; scalar_t__ vf_id; scalar_t__ action; } ;


 int BIT (int ) ;
 scalar_t__ ETH_P_IP ;
 int HCLGE_FD_ARFS_ACTIVE ;
 int INNER_DST_MAC ;
 int INNER_IP_TOS ;
 int INNER_SRC_MAC ;
 int INNER_SRC_PORT ;
 int INNER_VLAN_TAG_FST ;
 scalar_t__ IPPROTO_TCP ;
 int TCP_V4_FLOW ;
 int TCP_V6_FLOW ;
 int UDP_V4_FLOW ;
 int UDP_V6_FLOW ;
 int memcpy (int *,struct hclge_fd_rule_tuples const*,int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void hclge_fd_build_arfs_rule(const struct hclge_fd_rule_tuples *tuples,
         struct hclge_fd_rule *rule)
{
 rule->unused_tuple = BIT(INNER_SRC_MAC) | BIT(INNER_DST_MAC) |
        BIT(INNER_VLAN_TAG_FST) | BIT(INNER_IP_TOS) |
        BIT(INNER_SRC_PORT);
 rule->action = 0;
 rule->vf_id = 0;
 rule->rule_type = HCLGE_FD_ARFS_ACTIVE;
 if (tuples->ether_proto == ETH_P_IP) {
  if (tuples->ip_proto == IPPROTO_TCP)
   rule->flow_type = TCP_V4_FLOW;
  else
   rule->flow_type = UDP_V4_FLOW;
 } else {
  if (tuples->ip_proto == IPPROTO_TCP)
   rule->flow_type = TCP_V6_FLOW;
  else
   rule->flow_type = UDP_V6_FLOW;
 }
 memcpy(&rule->tuples, tuples, sizeof(rule->tuples));
 memset(&rule->tuples_mask, 0xFF, sizeof(rule->tuples_mask));
}
