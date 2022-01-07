
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spider_net_hw_descr {int buf_addr; int dmac_cmd_status; } ;
struct spider_net_descr_chain {int lock; struct spider_net_descr* tail; struct spider_net_descr* head; } ;
struct spider_net_descr {struct sk_buff* skb; struct spider_net_descr* next; struct spider_net_hw_descr* hwdescr; } ;
struct spider_net_card {int pdev; struct net_device* netdev; struct spider_net_descr_chain tx_chain; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int tx_dropped; int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; int dev; } ;


 int PCI_DMA_TODEVICE ;



 int SPIDER_NET_DESCR_NOT_IN_USE ;


 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_err (int *,char*,int) ;
 int netif_msg_tx_err (struct spider_net_card*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int spider_net_get_descr_status (struct spider_net_hw_descr*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
spider_net_release_tx_chain(struct spider_net_card *card, int brutal)
{
 struct net_device *dev = card->netdev;
 struct spider_net_descr_chain *chain = &card->tx_chain;
 struct spider_net_descr *descr;
 struct spider_net_hw_descr *hwdescr;
 struct sk_buff *skb;
 u32 buf_addr;
 unsigned long flags;
 int status;

 while (1) {
  spin_lock_irqsave(&chain->lock, flags);
  if (chain->tail == chain->head) {
   spin_unlock_irqrestore(&chain->lock, flags);
   return 0;
  }
  descr = chain->tail;
  hwdescr = descr->hwdescr;

  status = spider_net_get_descr_status(hwdescr);
  switch (status) {
  case 131:
   dev->stats.tx_packets++;
   dev->stats.tx_bytes += descr->skb->len;
   break;

  case 132:
   if (!brutal) {
    spin_unlock_irqrestore(&chain->lock, flags);
    return 1;
   }






  case 128:
  case 129:
  case 130:
   if (netif_msg_tx_err(card))
    dev_err(&card->netdev->dev, "forcing end of tx descriptor "
           "with status x%02x\n", status);
   dev->stats.tx_errors++;
   break;

  default:
   dev->stats.tx_dropped++;
   if (!brutal) {
    spin_unlock_irqrestore(&chain->lock, flags);
    return 1;
   }
  }

  chain->tail = descr->next;
  hwdescr->dmac_cmd_status |= SPIDER_NET_DESCR_NOT_IN_USE;
  skb = descr->skb;
  descr->skb = ((void*)0);
  buf_addr = hwdescr->buf_addr;
  spin_unlock_irqrestore(&chain->lock, flags);


  if (skb) {
   pci_unmap_single(card->pdev, buf_addr, skb->len,
     PCI_DMA_TODEVICE);
   dev_consume_skb_any(skb);
  }
 }
 return 0;
}
