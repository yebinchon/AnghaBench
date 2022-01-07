
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {unsigned int real_num_tx_queues; } ;


 unsigned int skb_get_hash (struct sk_buff*) ;

__attribute__((used)) static u16 xennet_select_queue(struct net_device *dev, struct sk_buff *skb,
          struct net_device *sb_dev)
{
 unsigned int num_queues = dev->real_num_tx_queues;
 u32 hash;
 u16 queue_idx;


 if (num_queues == 1) {
  queue_idx = 0;
 } else {
  hash = skb_get_hash(skb);
  queue_idx = hash % num_queues;
 }

 return queue_idx;
}
