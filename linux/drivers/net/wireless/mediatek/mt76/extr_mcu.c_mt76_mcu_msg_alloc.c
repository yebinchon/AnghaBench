
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (int,int ) ;
 int skb_put_data (struct sk_buff*,void const*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *
mt76_mcu_msg_alloc(const void *data, int head_len,
     int data_len, int tail_len)
{
 struct sk_buff *skb;

 skb = alloc_skb(head_len + data_len + tail_len,
   GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, head_len);
 if (data && data_len)
  skb_put_data(skb, data, data_len);

 return skb;
}
