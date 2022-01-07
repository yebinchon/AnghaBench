
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_carrier_errors; int tx_heartbeat_errors; int collisions; int tx_window_errors; int rx_fifo_errors; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 int EL3WINDOW (int) ;
 int inb (int) ;
 int inw (int) ;

__attribute__((used)) static void update_stats(int ioaddr, struct net_device *dev)
{


 EL3WINDOW(6);
 dev->stats.tx_carrier_errors += inb(ioaddr + 0);
 dev->stats.tx_heartbeat_errors += inb(ioaddr + 1);
                            inb(ioaddr + 2);
 dev->stats.collisions += inb(ioaddr + 3);
 dev->stats.tx_window_errors += inb(ioaddr + 4);
 dev->stats.rx_fifo_errors += inb(ioaddr + 5);
 dev->stats.tx_packets += inb(ioaddr + 6);
 dev->stats.tx_packets += (inb(ioaddr + 9) & 0x30) << 4;
                         inb(ioaddr + 7);

                    inb(ioaddr + 8);



 inw(ioaddr + 10);
 inw(ioaddr + 12);

 EL3WINDOW(4);
 inb(ioaddr + 12);


 EL3WINDOW(7);
}
