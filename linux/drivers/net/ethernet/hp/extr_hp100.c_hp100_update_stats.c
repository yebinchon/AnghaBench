
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int rx_errors; int rx_over_errors; int rx_crc_errors; int tx_errors; int tx_aborted_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; } ;


 int ABORT ;
 int CRC ;
 int DROPPED ;
 int MAC_CTRL ;
 int PERFORMANCE ;
 int TRACE ;
 int hp100_inb (int ) ;
 int hp100_inw (int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static void hp100_update_stats(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 u_short val;







 hp100_page(MAC_CTRL);
 val = hp100_inw(DROPPED) & 0x0fff;
 dev->stats.rx_errors += val;
 dev->stats.rx_over_errors += val;
 val = hp100_inb(CRC);
 dev->stats.rx_errors += val;
 dev->stats.rx_crc_errors += val;
 val = hp100_inb(ABORT);
 dev->stats.tx_errors += val;
 dev->stats.tx_aborted_errors += val;
 hp100_page(PERFORMANCE);
}
