
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring {int used; struct tcb* send_head; int * send_tail; } ;
struct tcb {int index; struct tcb* next; } ;
struct et131x_adapter {int tcb_send_qlock; int netdev; TYPE_2__* regs; struct tx_ring tx_ring; } ;
struct TYPE_3__ {int new_service_complete; } ;
struct TYPE_4__ {TYPE_1__ txdma; } ;


 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;
 int INDEX10 (int) ;
 int NUM_TCB ;
 int free_send_packet (struct et131x_adapter*,struct tcb*) ;
 int netif_wake_queue (int ) ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void et131x_handle_send_pkts(struct et131x_adapter *adapter)
{
 unsigned long flags;
 u32 serviced;
 struct tcb *tcb;
 u32 index;
 struct tx_ring *tx_ring = &adapter->tx_ring;

 serviced = readl(&adapter->regs->txdma.new_service_complete);
 index = INDEX10(serviced);




 spin_lock_irqsave(&adapter->tcb_send_qlock, flags);

 tcb = tx_ring->send_head;

 while (tcb &&
        ((serviced ^ tcb->index) & ET_DMA10_WRAP) &&
        index < INDEX10(tcb->index)) {
  tx_ring->used--;
  tx_ring->send_head = tcb->next;
  if (tcb->next == ((void*)0))
   tx_ring->send_tail = ((void*)0);

  spin_unlock_irqrestore(&adapter->tcb_send_qlock, flags);
  free_send_packet(adapter, tcb);
  spin_lock_irqsave(&adapter->tcb_send_qlock, flags);


  tcb = tx_ring->send_head;
 }
 while (tcb &&
        !((serviced ^ tcb->index) & ET_DMA10_WRAP) &&
        index > (tcb->index & ET_DMA10_MASK)) {
  tx_ring->used--;
  tx_ring->send_head = tcb->next;
  if (tcb->next == ((void*)0))
   tx_ring->send_tail = ((void*)0);

  spin_unlock_irqrestore(&adapter->tcb_send_qlock, flags);
  free_send_packet(adapter, tcb);
  spin_lock_irqsave(&adapter->tcb_send_qlock, flags);


  tcb = tx_ring->send_head;
 }


 if (tx_ring->used <= NUM_TCB / 3)
  netif_wake_queue(adapter->netdev);

 spin_unlock_irqrestore(&adapter->tcb_send_qlock, flags);
}
