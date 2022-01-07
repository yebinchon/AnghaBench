
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_coal {int coal_ticks; int coal_bufs; int coal_ticks_irq; int coal_bufs_irq; int idle_thresh; int bufs_per_record; int budget; } ;
struct bnxt {int stats_coal_ticks; struct bnxt_coal tx_coal; struct bnxt_coal rx_coal; } ;


 int BNXT_DEF_STATS_COAL_TICKS ;

__attribute__((used)) static void bnxt_init_dflt_coal(struct bnxt *bp)
{
 struct bnxt_coal *coal;




 coal = &bp->rx_coal;
 coal->coal_ticks = 10;
 coal->coal_bufs = 30;
 coal->coal_ticks_irq = 1;
 coal->coal_bufs_irq = 2;
 coal->idle_thresh = 50;
 coal->bufs_per_record = 2;
 coal->budget = 64;

 coal = &bp->tx_coal;
 coal->coal_ticks = 28;
 coal->coal_bufs = 30;
 coal->coal_ticks_irq = 2;
 coal->coal_bufs_irq = 2;
 coal->bufs_per_record = 1;

 bp->stats_coal_ticks = BNXT_DEF_STATS_COAL_TICKS;
}
