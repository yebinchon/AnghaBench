
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xircom_private {scalar_t__* tx_buffer; TYPE_2__** tx_skb; } ;
struct TYPE_3__ {int tx_packets; int collisions; int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int dev_kfree_skb_irq (TYPE_2__*) ;
 int le32_to_cpu (scalar_t__) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void
investigate_write_descriptor(struct net_device *dev,
        struct xircom_private *card,
        int descnr, unsigned int bufferoffset)
{
 int status;

 status = le32_to_cpu(card->tx_buffer[4*descnr]);







 if (status > 0) {
  if (card->tx_skb[descnr]!=((void*)0)) {
   dev->stats.tx_bytes += card->tx_skb[descnr]->len;
   dev_kfree_skb_irq(card->tx_skb[descnr]);
  }
  card->tx_skb[descnr] = ((void*)0);

  if (status & (1 << 8))
   dev->stats.collisions++;
  card->tx_buffer[4*descnr] = 0;
  netif_wake_queue (dev);
  dev->stats.tx_packets++;
 }
}
