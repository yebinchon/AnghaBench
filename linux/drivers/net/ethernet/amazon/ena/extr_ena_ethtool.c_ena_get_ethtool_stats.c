
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct ena_stats {scalar_t__ stat_offset; } ;
struct ena_adapter {int syncp; int dev_stats; } ;


 int ENA_STATS_ARRAY_GLOBAL ;
 int ena_dev_admin_queue_stats (struct ena_adapter*,int **) ;
 int ena_queue_stats (struct ena_adapter*,int **) ;
 int ena_safe_update_stat (int *,int ,int *) ;
 struct ena_stats* ena_stats_global_strings ;
 struct ena_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ena_get_ethtool_stats(struct net_device *netdev,
      struct ethtool_stats *stats,
      u64 *data)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 const struct ena_stats *ena_stats;
 u64 *ptr;
 int i;

 for (i = 0; i < ENA_STATS_ARRAY_GLOBAL; i++) {
  ena_stats = &ena_stats_global_strings[i];

  ptr = (u64 *)((uintptr_t)&adapter->dev_stats +
   (uintptr_t)ena_stats->stat_offset);

  ena_safe_update_stat(ptr, data++, &adapter->syncp);
 }

 ena_queue_stats(adapter, &data);
 ena_dev_admin_queue_stats(adapter, &data);
}
