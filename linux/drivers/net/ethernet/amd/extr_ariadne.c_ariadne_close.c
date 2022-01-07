
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_missed_errors; } ;
struct net_device {TYPE_1__ stats; scalar_t__ base_addr; } ;
struct Am79C960 {int RDP; int RAP; } ;


 int CSR0 ;
 int CSR112 ;
 int IRQ_AMIGA_PORTS ;
 int STOP ;
 int ariadne_debug ;
 int free_irq (int ,struct net_device*) ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netif_stop_queue (struct net_device*) ;
 int swapw (int ) ;

__attribute__((used)) static int ariadne_close(struct net_device *dev)
{
 volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;

 netif_stop_queue(dev);

 lance->RAP = CSR112;
 dev->stats.rx_missed_errors = swapw(lance->RDP);
 lance->RAP = CSR0;

 if (ariadne_debug > 1) {
  netdev_dbg(dev, "Shutting down ethercard, status was %02x\n",
      lance->RDP);
  netdev_dbg(dev, "%lu packets missed\n",
      dev->stats.rx_missed_errors);
 }


 lance->RDP = STOP;

 free_irq(IRQ_AMIGA_PORTS, dev);

 return 0;
}
