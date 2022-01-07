
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tx_carrier_errors; int tx_heartbeat_errors; int collisions; int tx_window_errors; int rx_fifo_errors; int tx_packets; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int name; } ;


 int EL3WINDOW (int) ;
 unsigned int EL3_STATUS ;
 int inb (unsigned int) ;
 int inw (unsigned int) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void update_stats(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 u8 rx, tx, up;

 pr_debug("%s: updating the statistics.\n", dev->name);

 if (inw(ioaddr+EL3_STATUS) == 0xffff)
  return;



 EL3WINDOW(6);
 dev->stats.tx_carrier_errors += inb(ioaddr + 0);
 dev->stats.tx_heartbeat_errors += inb(ioaddr + 1);
                                inb(ioaddr + 2);
 dev->stats.collisions += inb(ioaddr + 3);
 dev->stats.tx_window_errors += inb(ioaddr + 4);
 dev->stats.rx_fifo_errors += inb(ioaddr + 5);
 dev->stats.tx_packets += inb(ioaddr + 6);
 up = inb(ioaddr + 9);
 dev->stats.tx_packets += (up&0x30) << 4;
                         inb(ioaddr + 7);
                         inb(ioaddr + 8);
 rx = inw(ioaddr + 10);
 tx = inw(ioaddr + 12);

 EL3WINDOW(4);
                    inb(ioaddr + 12);
 up = inb(ioaddr + 13);

 EL3WINDOW(1);
}
