
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int dummy; } ;
struct tap_dev {int * taps; int numvtaps; } ;
struct sk_buff {int dummy; } ;
typedef int __u32 ;


 int READ_ONCE (int ) ;
 scalar_t__ likely (int ) ;
 struct tap_queue* rcu_dereference (int ) ;
 int skb_get_hash (struct sk_buff*) ;
 int skb_get_rx_queue (struct sk_buff*) ;
 int skb_rx_queue_recorded (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct tap_queue *tap_get_queue(struct tap_dev *tap,
           struct sk_buff *skb)
{
 struct tap_queue *queue = ((void*)0);





 int numvtaps = READ_ONCE(tap->numvtaps);
 __u32 rxq;

 if (!numvtaps)
  goto out;

 if (numvtaps == 1)
  goto single;


 rxq = skb_get_hash(skb);
 if (rxq) {
  queue = rcu_dereference(tap->taps[rxq % numvtaps]);
  goto out;
 }

 if (likely(skb_rx_queue_recorded(skb))) {
  rxq = skb_get_rx_queue(skb);

  while (unlikely(rxq >= numvtaps))
   rxq -= numvtaps;

  queue = rcu_dereference(tap->taps[rxq]);
  goto out;
 }

single:
 queue = rcu_dereference(tap->taps[0]);
out:
 return queue;
}
