
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tg3_napi {int dummy; } ;
struct tg3 {TYPE_1__* dev; } ;
struct sk_buff {struct sk_buff* next; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_4__ {int gso_segs; } ;
struct TYPE_3__ {int features; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 int tg3_start_xmit (struct sk_buff*,TYPE_1__*) ;
 scalar_t__ tg3_tx_avail (struct tg3_napi*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tg3_tso_bug(struct tg3 *tp, struct tg3_napi *tnapi,
         struct netdev_queue *txq, struct sk_buff *skb)
{
 struct sk_buff *segs, *nskb;
 u32 frag_cnt_est = skb_shinfo(skb)->gso_segs * 3;


 if (unlikely(tg3_tx_avail(tnapi) <= frag_cnt_est)) {
  netif_tx_stop_queue(txq);






  smp_mb();
  if (tg3_tx_avail(tnapi) <= frag_cnt_est)
   return NETDEV_TX_BUSY;

  netif_tx_wake_queue(txq);
 }

 segs = skb_gso_segment(skb, tp->dev->features &
        ~(NETIF_F_TSO | NETIF_F_TSO6));
 if (IS_ERR(segs) || !segs)
  goto tg3_tso_bug_end;

 do {
  nskb = segs;
  segs = segs->next;
  nskb->next = ((void*)0);
  tg3_start_xmit(nskb, tp->dev);
 } while (segs);

tg3_tso_bug_end:
 dev_consume_skb_any(skb);

 return NETDEV_TX_OK;
}
