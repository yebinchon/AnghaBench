
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40e_stats {int dummy; } ;
struct i40e_ring {int syncp; } ;


 unsigned int ARRAY_SIZE (struct i40e_stats*) ;
 int i40e_add_one_ethtool_stat (int *,struct i40e_ring*,struct i40e_stats const*) ;
 struct i40e_stats* i40e_gstrings_queue_stats ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void
i40e_add_queue_stats(u64 **data, struct i40e_ring *ring)
{
 const unsigned int size = ARRAY_SIZE(i40e_gstrings_queue_stats);
 const struct i40e_stats *stats = i40e_gstrings_queue_stats;
 unsigned int start;
 unsigned int i;






 do {
  start = !ring ? 0 : u64_stats_fetch_begin_irq(&ring->syncp);
  for (i = 0; i < size; i++) {
   i40e_add_one_ethtool_stat(&(*data)[i], ring,
        &stats[i]);
  }
 } while (ring && u64_stats_fetch_retry_irq(&ring->syncp, start));


 *data += size;
}
