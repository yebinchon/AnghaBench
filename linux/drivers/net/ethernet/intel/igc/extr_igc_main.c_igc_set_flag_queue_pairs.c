
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_adapter {int const rss_queues; int flags; } ;


 int IGC_FLAG_QUEUE_PAIRS ;

void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
         const u32 max_rss_queues)
{




 if (adapter->rss_queues > (max_rss_queues / 2))
  adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
 else
  adapter->flags &= ~IGC_FLAG_QUEUE_PAIRS;
}
