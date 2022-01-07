
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct local_info {int tx_timeout_task; } ;


 int netdev_notice (struct net_device*,char*) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
xirc_tx_timeout(struct net_device *dev)
{
    struct local_info *lp = netdev_priv(dev);
    dev->stats.tx_errors++;
    netdev_notice(dev, "transmit timed out\n");
    schedule_work(&lp->tx_timeout_task);
}
