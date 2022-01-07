
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {void* data; } ;
struct mlx5e_rq {TYPE_1__* stats; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {int ecn_mark; } ;


 int ETH_P_IP ;
 int IP6_ECN_set_ce (struct sk_buff*,struct ipv6hdr*) ;
 int IP_ECN_set_ce (struct iphdr*) ;
 scalar_t__ htons (int ) ;
 int is_last_ethertype_ip (struct sk_buff*,int*,scalar_t__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void mlx5e_enable_ecn(struct mlx5e_rq *rq, struct sk_buff *skb)
{
 int network_depth = 0;
 __be16 proto;
 void *ip;
 int rc;

 if (unlikely(!is_last_ethertype_ip(skb, &network_depth, &proto)))
  return;

 ip = skb->data + network_depth;
 rc = ((proto == htons(ETH_P_IP)) ? IP_ECN_set_ce((struct iphdr *)ip) :
      IP6_ECN_set_ce(skb, (struct ipv6hdr *)ip));

 rq->stats->ecn_mark += !!rc;
}
