
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xfrm_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ hi; scalar_t__ low; } ;
struct xfrm_offload {TYPE_1__ seq; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
typedef int __be64 ;


 int cpu_to_be64 (scalar_t__) ;
 int skb_store_bits (struct sk_buff*,int,int *,int) ;
 int skb_transport_offset (struct sk_buff*) ;

void mlx5e_ipsec_set_iv(struct sk_buff *skb, struct xfrm_state *x,
   struct xfrm_offload *xo)
{
 int iv_offset;
 __be64 seqno;


 seqno = cpu_to_be64(xo->seq.low + ((u64)xo->seq.hi << 32));
 iv_offset = skb_transport_offset(skb) + sizeof(struct ip_esp_hdr);
 skb_store_bits(skb, iv_offset, &seqno, 8);
}
