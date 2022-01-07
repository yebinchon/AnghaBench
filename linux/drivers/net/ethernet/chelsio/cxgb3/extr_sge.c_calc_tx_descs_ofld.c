
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;


 scalar_t__ WR_LEN ;
 unsigned int flits_to_desc (scalar_t__) ;
 scalar_t__ sgl_len (unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;
 scalar_t__ skb_tail_pointer (struct sk_buff const*) ;
 scalar_t__ skb_transport_header (struct sk_buff const*) ;
 int skb_transport_offset (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int calc_tx_descs_ofld(const struct sk_buff *skb)
{
 unsigned int flits, cnt;

 if (skb->len <= WR_LEN)
  return 1;

 flits = skb_transport_offset(skb) / 8;
 cnt = skb_shinfo(skb)->nr_frags;
 if (skb_tail_pointer(skb) != skb_transport_header(skb))
  cnt++;
 return flits_to_desc(flits + sgl_len(cnt));
}
