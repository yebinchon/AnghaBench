
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tx_ring {scalar_t__ used; struct tcb* send_head; int * send_tail; } ;
struct tcb {struct tcb* next; } ;
struct et131x_adapter {int tcb_send_qlock; struct tx_ring tx_ring; } ;


 scalar_t__ NUM_TCB ;
 int WARN_ON (int) ;
 int free_send_packet (struct et131x_adapter*,struct tcb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void et131x_free_busy_send_packets(struct et131x_adapter *adapter)
{
 struct tcb *tcb;
 unsigned long flags;
 u32 freed = 0;
 struct tx_ring *tx_ring = &adapter->tx_ring;


 spin_lock_irqsave(&adapter->tcb_send_qlock, flags);

 tcb = tx_ring->send_head;

 while (tcb != ((void*)0) && freed < NUM_TCB) {
  struct tcb *next = tcb->next;

  tx_ring->send_head = next;

  if (next == ((void*)0))
   tx_ring->send_tail = ((void*)0);

  tx_ring->used--;

  spin_unlock_irqrestore(&adapter->tcb_send_qlock, flags);

  freed++;
  free_send_packet(adapter, tcb);

  spin_lock_irqsave(&adapter->tcb_send_qlock, flags);

  tcb = tx_ring->send_head;
 }

 WARN_ON(freed == NUM_TCB);

 spin_unlock_irqrestore(&adapter->tcb_send_qlock, flags);

 tx_ring->used = 0;
}
