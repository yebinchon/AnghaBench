
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dmaing; scalar_t__ txing; } ;


 scalar_t__ EN0_ISR ;
 int ENISR_RESET ;
 scalar_t__ NE_BASE ;
 scalar_t__ NE_RESET ;
 TYPE_1__ ei_status ;
 int hw ;
 int inb (scalar_t__) ;
 unsigned long jiffies ;
 int netdev_err (struct net_device*,char*) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,unsigned long) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void ne2k_pci_reset_8390(struct net_device *dev)
{
 unsigned long reset_start_time = jiffies;
 struct ei_device *ei_local = netdev_priv(dev);

 netif_dbg(ei_local, hw, dev, "resetting the 8390 t=%ld...\n",
    jiffies);

 outb(inb(NE_BASE + NE_RESET), NE_BASE + NE_RESET);

 ei_status.txing = 0;
 ei_status.dmaing = 0;


 while ((inb(NE_BASE+EN0_ISR) & ENISR_RESET) == 0)
  if (jiffies - reset_start_time > 2) {
   netdev_err(dev, "ne2k_pci_reset_8390() did not complete.\n");
   break;
  }
 outb(ENISR_RESET, NE_BASE + EN0_ISR);
}
