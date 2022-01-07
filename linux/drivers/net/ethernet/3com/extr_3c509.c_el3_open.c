
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; int name; } ;


 int EL3WINDOW (int ) ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int RxReset ;
 int SetStatusEnb ;
 int TxReset ;
 int el3_debug ;
 int el3_interrupt ;
 int el3_up (struct net_device*) ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ,int ,int ,...) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int
el3_open(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 int i;

 outw(TxReset, ioaddr + EL3_CMD);
 outw(RxReset, ioaddr + EL3_CMD);
 outw(SetStatusEnb | 0x00, ioaddr + EL3_CMD);

 i = request_irq(dev->irq, el3_interrupt, 0, dev->name, dev);
 if (i)
  return i;

 EL3WINDOW(0);
 if (el3_debug > 3)
  pr_debug("%s: Opening, IRQ %d	 status@%x %4.4x.\n", dev->name,
      dev->irq, ioaddr + EL3_STATUS, inw(ioaddr + EL3_STATUS));

 el3_up(dev);

 if (el3_debug > 3)
  pr_debug("%s: Opened 3c509  IRQ %d  status %4.4x.\n",
      dev->name, dev->irq, inw(ioaddr + EL3_STATUS));

 return 0;
}
