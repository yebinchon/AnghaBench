
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int flags; } ;
struct sk_buff {scalar_t__ data; } ;


 int VELOCITY_FLAGS_IP_ALIGN ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline void velocity_iph_realign(struct velocity_info *vptr,
     struct sk_buff *skb, int pkt_size)
{
 if (vptr->flags & VELOCITY_FLAGS_IP_ALIGN) {
  memmove(skb->data + 2, skb->data, pkt_size);
  skb_reserve(skb, 2);
 }
}
