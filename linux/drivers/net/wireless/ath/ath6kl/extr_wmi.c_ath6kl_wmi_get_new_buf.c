
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int data; } ;


 struct sk_buff* ath6kl_buf_alloc (int ) ;
 int memset (int ,int ,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static inline struct sk_buff *ath6kl_wmi_get_new_buf(u32 size)
{
 struct sk_buff *skb;

 skb = ath6kl_buf_alloc(size);
 if (!skb)
  return ((void*)0);

 skb_put(skb, size);
 if (size)
  memset(skb->data, 0, size);

 return skb;
}
