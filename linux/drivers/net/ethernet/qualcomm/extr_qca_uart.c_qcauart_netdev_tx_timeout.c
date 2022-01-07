
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcauart {int net_dev; } ;
struct TYPE_2__ {int tx_dropped; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int dev_trans_start (struct net_device*) ;
 int jiffies ;
 int netdev_info (int ,char*,int ,int ) ;
 struct qcauart* netdev_priv (struct net_device*) ;

__attribute__((used)) static void qcauart_netdev_tx_timeout(struct net_device *dev)
{
 struct qcauart *qca = netdev_priv(dev);

 netdev_info(qca->net_dev, "Transmit timeout at %ld, latency %ld\n",
      jiffies, dev_trans_start(dev));
 dev->stats.tx_errors++;
 dev->stats.tx_dropped++;
}
