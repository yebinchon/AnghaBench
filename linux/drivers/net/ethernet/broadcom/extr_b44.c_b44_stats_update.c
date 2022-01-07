
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int syncp; int tx_good_octets; } ;
struct b44 {TYPE_1__ hw_stats; } ;


 unsigned long B44_RX_GOOD_O ;
 unsigned long B44_RX_NPAUSE ;
 unsigned long B44_TX_GOOD_O ;
 unsigned long B44_TX_PAUSE ;
 scalar_t__ br32 (struct b44*,unsigned long) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void b44_stats_update(struct b44 *bp)
{
 unsigned long reg;
 u64 *val;

 val = &bp->hw_stats.tx_good_octets;
 u64_stats_update_begin(&bp->hw_stats.syncp);

 for (reg = B44_TX_GOOD_O; reg <= B44_TX_PAUSE; reg += 4UL) {
  *val++ += br32(bp, reg);
 }


 reg += 8*4UL;

 for (reg = B44_RX_GOOD_O; reg <= B44_RX_NPAUSE; reg += 4UL) {
  *val++ += br32(bp, reg);
 }

 u64_stats_update_end(&bp->hw_stats.syncp);
}
