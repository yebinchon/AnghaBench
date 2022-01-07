
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {int * send_tail; int * send_head; struct tcb* tcb_qtail; struct tcb* tcb_qhead; struct tcb* tcb_ring; } ;
struct tcb {struct tcb* next; } ;
struct et131x_adapter {struct tx_ring tx_ring; } ;


 int NUM_TCB ;
 int memset (struct tcb*,int ,int) ;

__attribute__((used)) static void et131x_init_send(struct et131x_adapter *adapter)
{
 int i;
 struct tx_ring *tx_ring = &adapter->tx_ring;
 struct tcb *tcb = tx_ring->tcb_ring;

 tx_ring->tcb_qhead = tcb;

 memset(tcb, 0, sizeof(struct tcb) * NUM_TCB);

 for (i = 0; i < NUM_TCB; i++) {
  tcb->next = tcb + 1;
  tcb++;
 }

 tcb--;
 tx_ring->tcb_qtail = tcb;
 tcb->next = ((void*)0);

 tx_ring->send_head = ((void*)0);
 tx_ring->send_tail = ((void*)0);
}
