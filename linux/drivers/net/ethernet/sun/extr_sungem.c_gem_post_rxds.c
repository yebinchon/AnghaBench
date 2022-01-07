
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gem_rxd {int status_word; } ;
struct gem {int rx_new; scalar_t__ regs; TYPE_1__* init_block; } ;
struct TYPE_2__ {struct gem_rxd* rxd; } ;


 int NEXT_RX (int) ;
 int RXDCTRL_FRESH (struct gem*) ;
 scalar_t__ RXDMA_KICK ;
 int cpu_to_le64 (int ) ;
 int dma_wmb () ;
 int mb () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static __inline__ void gem_post_rxds(struct gem *gp, int limit)
{
 int cluster_start, curr, count, kick;

 cluster_start = curr = (gp->rx_new & ~(4 - 1));
 count = 0;
 kick = -1;
 dma_wmb();
 while (curr != limit) {
  curr = NEXT_RX(curr);
  if (++count == 4) {
   struct gem_rxd *rxd =
    &gp->init_block->rxd[cluster_start];
   for (;;) {
    rxd->status_word = cpu_to_le64(RXDCTRL_FRESH(gp));
    rxd++;
    cluster_start = NEXT_RX(cluster_start);
    if (cluster_start == curr)
     break;
   }
   kick = curr;
   count = 0;
  }
 }
 if (kick >= 0) {
  mb();
  writel(kick, gp->regs + RXDMA_KICK);
 }
}
