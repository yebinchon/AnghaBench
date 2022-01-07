
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_fifo {int txq; int handle; } ;
struct sk_buff {int dummy; } ;


 int NR_SKB_COMPLETED ;
 scalar_t__ __netif_tx_trylock (int ) ;
 int __netif_tx_unlock (int ) ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int vxge_hw_vpath_poll_tx (int ,struct sk_buff***,int,int*) ;

__attribute__((used)) static inline void VXGE_COMPLETE_VPATH_TX(struct vxge_fifo *fifo)
{
 struct sk_buff **skb_ptr = ((void*)0);
 struct sk_buff **temp;

 struct sk_buff *completed[128];
 int more;

 do {
  more = 0;
  skb_ptr = completed;

  if (__netif_tx_trylock(fifo->txq)) {
   vxge_hw_vpath_poll_tx(fifo->handle, &skb_ptr,
      128, &more);
   __netif_tx_unlock(fifo->txq);
  }


  for (temp = completed; temp != skb_ptr; temp++)
   dev_consume_skb_irq(*temp);
 } while (more);
}
