
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ena_stats {scalar_t__ stat_offset; } ;
struct ena_adapter {TYPE_1__* ena_dev; } ;
struct TYPE_4__ {int stats; } ;
struct TYPE_3__ {TYPE_2__ admin_queue; } ;


 int ENA_STATS_ARRAY_ENA_COM ;
 struct ena_stats* ena_stats_ena_com_strings ;

__attribute__((used)) static void ena_dev_admin_queue_stats(struct ena_adapter *adapter, u64 **data)
{
 const struct ena_stats *ena_stats;
 u32 *ptr;
 int i;

 for (i = 0; i < ENA_STATS_ARRAY_ENA_COM; i++) {
  ena_stats = &ena_stats_ena_com_strings[i];

  ptr = (u32 *)((uintptr_t)&adapter->ena_dev->admin_queue.stats +
   (uintptr_t)ena_stats->stat_offset);

  *(*data)++ = *ptr;
 }
}
