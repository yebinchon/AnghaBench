
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct statistics_block {int dummy; } ;
struct bnx2 {scalar_t__ temp_stats_blk; scalar_t__ stats_blk; } ;



__attribute__((used)) static void
bnx2_save_stats(struct bnx2 *bp)
{
 u32 *hw_stats = (u32 *) bp->stats_blk;
 u32 *temp_stats = (u32 *) bp->temp_stats_blk;
 int i;


 for (i = 0; i < 20; i += 2) {
  u32 hi;
  u64 lo;

  hi = temp_stats[i] + hw_stats[i];
  lo = (u64) temp_stats[i + 1] + (u64) hw_stats[i + 1];
  if (lo > 0xffffffff)
   hi++;
  temp_stats[i] = hi;
  temp_stats[i + 1] = lo & 0xffffffff;
 }

 for ( ; i < sizeof(struct statistics_block) / 4; i++)
  temp_stats[i] += hw_stats[i];
}
