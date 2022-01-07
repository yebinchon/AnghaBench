
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tx_underrun; int rx_ints; int tx_ints; int max_tx_qlen; } ;
struct tc35815_local {TYPE_1__ lstats; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 struct tc35815_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tc35815_get_ethtool_stats(struct net_device *dev, struct ethtool_stats *stats, u64 *data)
{
 struct tc35815_local *lp = netdev_priv(dev);
 data[0] = lp->lstats.max_tx_qlen;
 data[1] = lp->lstats.tx_ints;
 data[2] = lp->lstats.rx_ints;
 data[3] = lp->lstats.tx_underrun;
}
