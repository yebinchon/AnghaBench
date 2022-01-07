
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; } ;


 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 scalar_t__ TX_FREE ;
 scalar_t__ TX_STATUS ;
 int TxEnable ;
 int TxReset ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outw (int ,scalar_t__) ;
 int pr_warn (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
el3_tx_timeout (struct net_device *dev)
{
 int ioaddr = dev->base_addr;


 pr_warn("%s: transmit timed out, Tx_status %2.2x status %4.4x Tx FIFO room %d\n",
  dev->name, inb(ioaddr + TX_STATUS), inw(ioaddr + EL3_STATUS),
  inw(ioaddr + TX_FREE));
 dev->stats.tx_errors++;
 netif_trans_update(dev);

 outw(TxReset, ioaddr + EL3_CMD);
 outw(TxEnable, ioaddr + EL3_CMD);
 netif_wake_queue(dev);
}
