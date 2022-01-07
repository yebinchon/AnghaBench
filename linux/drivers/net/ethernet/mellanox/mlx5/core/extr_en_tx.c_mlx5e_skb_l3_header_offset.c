
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int mlx5e_skb_l2_header_offset (struct sk_buff*) ;
 scalar_t__ skb_transport_header_was_set (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static inline int mlx5e_skb_l3_header_offset(struct sk_buff *skb)
{
 if (skb_transport_header_was_set(skb))
  return skb_transport_offset(skb);
 else
  return mlx5e_skb_l2_header_offset(skb);
}
