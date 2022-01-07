
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; scalar_t__ csum_start; scalar_t__ head; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ __sum16 ;
struct TYPE_2__ {scalar_t__ check; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 scalar_t__ is_ipv4_pkt (struct sk_buff*) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
fec_enet_clear_csum(struct sk_buff *skb, struct net_device *ndev)
{

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 if (unlikely(skb_cow_head(skb, 0)))
  return -1;

 if (is_ipv4_pkt(skb))
  ip_hdr(skb)->check = 0;
 *(__sum16 *)(skb->head + skb->csum_start + skb->csum_offset) = 0;

 return 0;
}
