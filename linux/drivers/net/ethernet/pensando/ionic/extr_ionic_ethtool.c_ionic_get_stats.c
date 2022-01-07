
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int dummy; } ;
struct ethtool_stats {int n_stats; } ;
struct TYPE_2__ {int (* get_values ) (struct ionic_lif*,int **) ;} ;


 size_t ionic_num_stats_grps ;
 TYPE_1__* ionic_stats_groups ;
 int memset (int *,int ,int) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 int stub1 (struct ionic_lif*,int **) ;

__attribute__((used)) static void ionic_get_stats(struct net_device *netdev,
       struct ethtool_stats *stats, u64 *buf)
{
 struct ionic_lif *lif;
 u32 i;

 lif = netdev_priv(netdev);

 memset(buf, 0, stats->n_stats * sizeof(*buf));
 for (i = 0; i < ionic_num_stats_grps; i++)
  ionic_stats_groups[i].get_values(lif, &buf);
}
