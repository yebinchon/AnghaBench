
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spider_net_descr {struct spider_net_descr* next; int * skb; TYPE_2__* hwdescr; } ;
struct TYPE_3__ {struct spider_net_descr* head; } ;
struct spider_net_card {int pdev; TYPE_1__ rx_chain; } ;
struct TYPE_4__ {int buf_addr; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int SPIDER_NET_MAX_FRAME ;
 int dev_kfree_skb (int *) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void
spider_net_free_rx_chain_contents(struct spider_net_card *card)
{
 struct spider_net_descr *descr;

 descr = card->rx_chain.head;
 do {
  if (descr->skb) {
   pci_unmap_single(card->pdev, descr->hwdescr->buf_addr,
      SPIDER_NET_MAX_FRAME,
      PCI_DMA_BIDIRECTIONAL);
   dev_kfree_skb(descr->skb);
   descr->skb = ((void*)0);
  }
  descr = descr->next;
 } while (descr != card->rx_chain.head);
}
