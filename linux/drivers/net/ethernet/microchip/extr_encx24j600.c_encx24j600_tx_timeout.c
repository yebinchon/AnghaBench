
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {int dummy; } ;


 scalar_t__ dev_trans_start (struct net_device*) ;
 scalar_t__ jiffies ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;
 int netif_err (struct encx24j600_priv*,int ,struct net_device*,char*,scalar_t__,scalar_t__) ;
 int netif_wake_queue (struct net_device*) ;
 int tx_err ;

__attribute__((used)) static void encx24j600_tx_timeout(struct net_device *dev)
{
 struct encx24j600_priv *priv = netdev_priv(dev);

 netif_err(priv, tx_err, dev, "TX timeout at %ld, latency %ld\n",
    jiffies, jiffies - dev_trans_start(dev));

 dev->stats.tx_errors++;
 netif_wake_queue(dev);
}
