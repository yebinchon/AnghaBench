
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct vnic_stats {int rx; int tx; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct enic {int gen_stats; } ;
struct TYPE_6__ {size_t index; } ;
struct TYPE_5__ {size_t index; } ;
struct TYPE_4__ {size_t index; } ;


 int ENOMEM ;
 int enic_dev_stats_dump (struct enic*,struct vnic_stats**) ;
 TYPE_3__* enic_gen_stats ;
 unsigned int enic_n_gen_stats ;
 unsigned int enic_n_rx_stats ;
 unsigned int enic_n_tx_stats ;
 TYPE_2__* enic_rx_stats ;
 TYPE_1__* enic_tx_stats ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void enic_get_ethtool_stats(struct net_device *netdev,
 struct ethtool_stats *stats, u64 *data)
{
 struct enic *enic = netdev_priv(netdev);
 struct vnic_stats *vstats;
 unsigned int i;
 int err;

 err = enic_dev_stats_dump(enic, &vstats);




 if (err == -ENOMEM)
  return;

 for (i = 0; i < enic_n_tx_stats; i++)
  *(data++) = ((u64 *)&vstats->tx)[enic_tx_stats[i].index];
 for (i = 0; i < enic_n_rx_stats; i++)
  *(data++) = ((u64 *)&vstats->rx)[enic_rx_stats[i].index];
 for (i = 0; i < enic_n_gen_stats; i++)
  *(data++) = ((u64 *)&enic->gen_stats)[enic_gen_stats[i].index];
}
