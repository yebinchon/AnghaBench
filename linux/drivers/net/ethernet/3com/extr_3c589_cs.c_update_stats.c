
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_packets; int rx_fifo_errors; int tx_window_errors; int collisions; int tx_heartbeat_errors; int tx_carrier_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;


 int EL3WINDOW (int) ;
 scalar_t__ EL3_CMD ;
 int StatsDisable ;
 int StatsEnable ;
 scalar_t__ inb (unsigned int) ;
 int inw (unsigned int) ;
 int netdev_dbg (struct net_device*,char*) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void update_stats(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;

 netdev_dbg(dev, "updating the statistics.\n");

 outw(StatsDisable, ioaddr + EL3_CMD);

 EL3WINDOW(6);
 dev->stats.tx_carrier_errors += inb(ioaddr + 0);
 dev->stats.tx_heartbeat_errors += inb(ioaddr + 1);

 inb(ioaddr + 2);
 dev->stats.collisions += inb(ioaddr + 3);
 dev->stats.tx_window_errors += inb(ioaddr + 4);
 dev->stats.rx_fifo_errors += inb(ioaddr + 5);
 dev->stats.tx_packets += inb(ioaddr + 6);

 inb(ioaddr + 7);

 inb(ioaddr + 8);

 inw(ioaddr + 10);

 inw(ioaddr + 12);


 EL3WINDOW(1);
 outw(StatsEnable, ioaddr + EL3_CMD);
}
