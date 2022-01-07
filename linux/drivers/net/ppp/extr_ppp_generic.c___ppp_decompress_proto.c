
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;


 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void __ppp_decompress_proto(struct sk_buff *skb)
{
 if (skb->data[0] & 0x01)
  *(u8 *)skb_push(skb, 1) = 0x00;
}
