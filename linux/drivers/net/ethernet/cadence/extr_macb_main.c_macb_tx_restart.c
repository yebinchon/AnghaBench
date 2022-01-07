
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_queue {unsigned int tx_head; unsigned int tx_tail; struct macb* bp; } ;
struct macb {int caps; } ;


 int ISR ;
 int MACB_BIT (int ) ;
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ;
 int NCR ;
 int TSTART ;
 int TXUBR ;
 int macb_readl (struct macb*,int ) ;
 int macb_writel (struct macb*,int ,int) ;
 int queue_writel (struct macb_queue*,int ,int) ;

__attribute__((used)) static void macb_tx_restart(struct macb_queue *queue)
{
 unsigned int head = queue->tx_head;
 unsigned int tail = queue->tx_tail;
 struct macb *bp = queue->bp;

 if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
  queue_writel(queue, ISR, MACB_BIT(TXUBR));

 if (head == tail)
  return;

 macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));
}
