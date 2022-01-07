
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int type; int sizeof_stat; int stat_offset; } ;



 int IXGB_STATS_LEN ;

 TYPE_1__* ixgb_gstrings_stats ;
 int ixgb_update_stats (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
ixgb_get_ethtool_stats(struct net_device *netdev,
  struct ethtool_stats *stats, u64 *data)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 int i;
 char *p = ((void*)0);

 ixgb_update_stats(adapter);
 for (i = 0; i < IXGB_STATS_LEN; i++) {
  switch (ixgb_gstrings_stats[i].type) {
  case 128:
   p = (char *) netdev +
     ixgb_gstrings_stats[i].stat_offset;
   break;
  case 129:
   p = (char *) adapter +
     ixgb_gstrings_stats[i].stat_offset;
   break;
  }

  data[i] = (ixgb_gstrings_stats[i].sizeof_stat ==
   sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }
}
