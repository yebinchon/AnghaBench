
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tg3_napi {TYPE_1__* tx_buffers; int prodring; } ;
struct tg3 {int irq_cnt; int dev; struct tg3_napi* napi; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;


 int TG3_TX_RING_SIZE ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int netdev_get_tx_queue (int ,int) ;
 int netdev_tx_reset_queue (int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int tg3_rx_prodring_free (struct tg3*,int *) ;
 int tg3_tx_skb_unmap (struct tg3_napi*,int,scalar_t__) ;

__attribute__((used)) static void tg3_free_rings(struct tg3 *tp)
{
 int i, j;

 for (j = 0; j < tp->irq_cnt; j++) {
  struct tg3_napi *tnapi = &tp->napi[j];

  tg3_rx_prodring_free(tp, &tnapi->prodring);

  if (!tnapi->tx_buffers)
   continue;

  for (i = 0; i < TG3_TX_RING_SIZE; i++) {
   struct sk_buff *skb = tnapi->tx_buffers[i].skb;

   if (!skb)
    continue;

   tg3_tx_skb_unmap(tnapi, i,
      skb_shinfo(skb)->nr_frags - 1);

   dev_consume_skb_any(skb);
  }
  netdev_tx_reset_queue(netdev_get_tx_queue(tp->dev, j));
 }
}
