
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct atl1_adapter {int dummy; } ;
struct TYPE_3__ {int stat_offset; int sizeof_stat; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* atl1_gstrings_stats ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1_get_ethtool_stats(struct net_device *netdev,
 struct ethtool_stats *stats, u64 *data)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 int i;
 char *p;

 for (i = 0; i < ARRAY_SIZE(atl1_gstrings_stats); i++) {
  p = (char *)adapter+atl1_gstrings_stats[i].stat_offset;
  data[i] = (atl1_gstrings_stats[i].sizeof_stat ==
   sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }

}
