
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;


 scalar_t__ EL3_CMD ;
 int TxEnable ;
 int TxReset ;
 int dump_status (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outw (int ,scalar_t__) ;
 int tc589_wait_for_completion (struct net_device*,int ) ;

__attribute__((used)) static void el3_tx_timeout(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;

 netdev_warn(dev, "Transmit timed out!\n");
 dump_status(dev);
 dev->stats.tx_errors++;
 netif_trans_update(dev);

 tc589_wait_for_completion(dev, TxReset);
 outw(TxEnable, ioaddr + EL3_CMD);
 netif_wake_queue(dev);
}
