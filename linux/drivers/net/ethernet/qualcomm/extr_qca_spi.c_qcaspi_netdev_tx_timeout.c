
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qcaspi {scalar_t__ spi_thread; int sync; TYPE_2__* net_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int tx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int QCASPI_SYNC_UNKNOWN ;
 scalar_t__ dev_trans_start (struct net_device*) ;
 scalar_t__ jiffies ;
 int netdev_info (TYPE_2__*,char*,scalar_t__,scalar_t__) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void
qcaspi_netdev_tx_timeout(struct net_device *dev)
{
 struct qcaspi *qca = netdev_priv(dev);

 netdev_info(qca->net_dev, "Transmit timeout at %ld, latency %ld\n",
      jiffies, jiffies - dev_trans_start(dev));
 qca->net_dev->stats.tx_errors++;

 qca->sync = QCASPI_SYNC_UNKNOWN;

 if (qca->spi_thread)
  wake_up_process(qca->spi_thread);
}
