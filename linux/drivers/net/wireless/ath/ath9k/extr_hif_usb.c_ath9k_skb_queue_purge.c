
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hif_device_usb {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static inline void ath9k_skb_queue_purge(struct hif_device_usb *hif_dev,
      struct sk_buff_head *list)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(list)) != ((void*)0)) {
  dev_kfree_skb_any(skb);
 }
}
