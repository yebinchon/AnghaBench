
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netfront_queue {TYPE_1__* tx_skbs; int tx_skb_freelist; int * grant_tx_ref; int ** grant_tx_page; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;


 int GNTMAP_readonly ;
 int GRANT_INVALID_REF ;
 int NET_TX_RING_SIZE ;
 int add_id_to_freelist (int *,TYPE_1__*,int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int get_page (int *) ;
 int gnttab_end_foreign_access (int ,int ,unsigned long) ;
 scalar_t__ page_address (int *) ;
 scalar_t__ skb_entry_is_link (TYPE_1__*) ;

__attribute__((used)) static void xennet_release_tx_bufs(struct netfront_queue *queue)
{
 struct sk_buff *skb;
 int i;

 for (i = 0; i < NET_TX_RING_SIZE; i++) {

  if (skb_entry_is_link(&queue->tx_skbs[i]))
   continue;

  skb = queue->tx_skbs[i].skb;
  get_page(queue->grant_tx_page[i]);
  gnttab_end_foreign_access(queue->grant_tx_ref[i],
       GNTMAP_readonly,
       (unsigned long)page_address(queue->grant_tx_page[i]));
  queue->grant_tx_page[i] = ((void*)0);
  queue->grant_tx_ref[i] = GRANT_INVALID_REF;
  add_id_to_freelist(&queue->tx_skb_freelist, queue->tx_skbs, i);
  dev_kfree_skb_irq(skb);
 }
}
