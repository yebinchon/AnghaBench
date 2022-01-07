
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct u64_stats_sync {int dummy; } ;


 unsigned int u64_stats_fetch_begin_irq (struct u64_stats_sync*) ;
 scalar_t__ u64_stats_fetch_retry_irq (struct u64_stats_sync*,unsigned int) ;

__attribute__((used)) static void ena_safe_update_stat(u64 *src, u64 *dst,
     struct u64_stats_sync *syncp)
{
 unsigned int start;

 do {
  start = u64_stats_fetch_begin_irq(syncp);
  *(dst) = *src;
 } while (u64_stats_fetch_retry_irq(syncp, start));
}
