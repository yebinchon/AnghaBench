
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_arfs_tuple {scalar_t__ eth_proto; int dst_ipv6; int src_ipv6; } ;
struct in6_addr {int dummy; } ;


 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static bool qede_flow_spec_ipv6_cmp(struct qede_arfs_tuple *a,
        struct qede_arfs_tuple *b)
{
 if (a->eth_proto != htons(ETH_P_IPV6) ||
     b->eth_proto != htons(ETH_P_IPV6))
  return 0;

 if (memcmp(&a->src_ipv6, &b->src_ipv6, sizeof(struct in6_addr)))
  return 0;

 if (memcmp(&a->dst_ipv6, &b->dst_ipv6, sizeof(struct in6_addr)))
  return 0;

 return 1;
}
