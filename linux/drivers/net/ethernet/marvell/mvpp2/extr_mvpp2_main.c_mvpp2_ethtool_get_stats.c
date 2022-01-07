
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct mvpp2_port {int gather_stats_lock; int nrxqs; int ntxqs; int ethtool_stats; TYPE_1__ stats_work; } ;
struct ethtool_stats {int dummy; } ;


 int MVPP2_N_ETHTOOL_STATS (int ,int ) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mvpp2_gather_hw_statistics (int *) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mvpp2_ethtool_get_stats(struct net_device *dev,
        struct ethtool_stats *stats, u64 *data)
{
 struct mvpp2_port *port = netdev_priv(dev);




 mvpp2_gather_hw_statistics(&port->stats_work.work);

 mutex_lock(&port->gather_stats_lock);
 memcpy(data, port->ethtool_stats,
        sizeof(u64) * MVPP2_N_ETHTOOL_STATS(port->ntxqs, port->nrxqs));
 mutex_unlock(&port->gather_stats_lock);
}
