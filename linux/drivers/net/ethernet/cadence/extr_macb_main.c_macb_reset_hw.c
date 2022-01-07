
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb_queue {int dummy; } ;
struct macb {unsigned int num_queues; int caps; struct macb_queue* queues; } ;


 int CLRSTAT ;
 int IDR ;
 int ISR ;
 int MACB_BIT (int ) ;
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ;
 int NCR ;
 int RE ;
 int RSR ;
 int TE ;
 int TSR ;
 int macb_readl (struct macb*,int ) ;
 int macb_writel (struct macb*,int ,int) ;
 int queue_readl (struct macb_queue*,int ) ;
 int queue_writel (struct macb_queue*,int ,int) ;

__attribute__((used)) static void macb_reset_hw(struct macb *bp)
{
 struct macb_queue *queue;
 unsigned int q;
 u32 ctrl = macb_readl(bp, NCR);




 ctrl &= ~(MACB_BIT(RE) | MACB_BIT(TE));


 ctrl |= MACB_BIT(CLRSTAT);

 macb_writel(bp, NCR, ctrl);


 macb_writel(bp, TSR, -1);
 macb_writel(bp, RSR, -1);


 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  queue_writel(queue, IDR, -1);
  queue_readl(queue, ISR);
  if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
   queue_writel(queue, ISR, -1);
 }
}
