
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {unsigned int mtu; } ;
struct ionic_rxq_desc {int opcode; int len; int addr; } ;
struct ionic_queue {TYPE_1__* head; TYPE_2__* lif; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct net_device* netdev; } ;
struct TYPE_3__ {int index; struct ionic_rxq_desc* desc; } ;


 unsigned int ETH_HLEN ;
 int IONIC_RXQ_DESC_OPCODE_SIMPLE ;
 int IONIC_RX_RING_DOORBELL_STRIDE ;
 int cpu_to_le16 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 unsigned int ionic_q_space_avail (struct ionic_queue*) ;
 int ionic_rx_clean ;
 struct sk_buff* ionic_rx_skb_alloc (struct ionic_queue*,unsigned int,int *) ;
 int ionic_rxq_post (struct ionic_queue*,int,int ,struct sk_buff*) ;

void ionic_rx_fill(struct ionic_queue *q)
{
 struct net_device *netdev = q->lif->netdev;
 struct ionic_rxq_desc *desc;
 struct sk_buff *skb;
 dma_addr_t dma_addr;
 bool ring_doorbell;
 unsigned int len;
 unsigned int i;

 len = netdev->mtu + ETH_HLEN;

 for (i = ionic_q_space_avail(q); i; i--) {
  skb = ionic_rx_skb_alloc(q, len, &dma_addr);
  if (!skb)
   return;

  desc = q->head->desc;
  desc->addr = cpu_to_le64(dma_addr);
  desc->len = cpu_to_le16(len);
  desc->opcode = IONIC_RXQ_DESC_OPCODE_SIMPLE;

  ring_doorbell = ((q->head->index + 1) &
    IONIC_RX_RING_DOORBELL_STRIDE) == 0;

  ionic_rxq_post(q, ring_doorbell, ionic_rx_clean, skb);
 }
}
