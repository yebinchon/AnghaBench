
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; int rx_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; } ;


 int TRACE ;
 int hp100_outw (int,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static void hp100_misc_interrupt(struct net_device *dev)
{
 dev->stats.rx_errors++;
 dev->stats.tx_errors++;
}
