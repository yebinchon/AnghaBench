
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int base_addr; int* dev_addr; int irq; } ;
struct TYPE_2__ {int close; int copy_from_card; int copy_to_card; int reset; int intmask; int status; int command; int owner; } ;
struct arcnet_local {int setup; int card_flags; int setup2; int config; int timeout; int backplane; int card_name; TYPE_1__ hw; } ;


 int ARC_CAN_10MBIT ;
 int COM20020_REG_W_COMMAND ;
 int COM20020_REG_W_CONFIG ;
 int COM20020_REG_W_XREG ;
 int D_NORMAL ;
 int EIO ;
 int ENODEV ;
 int STARTIOcmd ;
 int SUB_NODE ;
 int SUB_SETUP1 ;
 int SUB_SETUP2 ;
 int THIS_MODULE ;
 int arc_printk (int ,struct net_device*,char*,...) ;
 int arcnet_inb (int,int) ;
 int arcnet_interrupt ;
 int arcnet_outb (int,int,int ) ;
 int * clockrates ;
 int com20020_close ;
 int com20020_command ;
 int com20020_copy_from_card ;
 int com20020_copy_to_card ;
 int com20020_reset ;
 int com20020_set_subaddress (struct arcnet_local*,int,int ) ;
 int com20020_setmask ;
 int com20020_status ;
 int free_irq (int ,struct net_device*) ;
 int mdelay (int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 scalar_t__ register_netdev (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int,char*,struct net_device*) ;

int com20020_found(struct net_device *dev, int shared)
{
 struct arcnet_local *lp;
 int ioaddr = dev->base_addr;



 lp = netdev_priv(dev);

 lp->hw.owner = THIS_MODULE;
 lp->hw.command = com20020_command;
 lp->hw.status = com20020_status;
 lp->hw.intmask = com20020_setmask;
 lp->hw.reset = com20020_reset;
 lp->hw.copy_to_card = com20020_copy_to_card;
 lp->hw.copy_from_card = com20020_copy_from_card;
 lp->hw.close = com20020_close;


 if (!dev->dev_addr[0])
  dev->dev_addr[0] = arcnet_inb(ioaddr, 8);

 com20020_set_subaddress(lp, ioaddr, SUB_SETUP1);
 arcnet_outb(lp->setup, ioaddr, COM20020_REG_W_XREG);

 if (lp->card_flags & ARC_CAN_10MBIT) {
  com20020_set_subaddress(lp, ioaddr, SUB_SETUP2);
  arcnet_outb(lp->setup2, ioaddr, COM20020_REG_W_XREG);


  mdelay(1);
  arcnet_outb(STARTIOcmd, ioaddr, COM20020_REG_W_COMMAND);
 }

 lp->config = (lp->timeout << 3) | (lp->backplane << 2) | SUB_NODE;

 arcnet_outb(lp->config, ioaddr, COM20020_REG_W_CONFIG);
 arcnet_outb(dev->dev_addr[0], ioaddr, COM20020_REG_W_XREG);


 if (request_irq(dev->irq, arcnet_interrupt, shared,
   "arcnet (COM20020)", dev)) {
  arc_printk(D_NORMAL, dev, "Can't get IRQ %d!\n", dev->irq);
  return -ENODEV;
 }

 arc_printk(D_NORMAL, dev, "%s: station %02Xh found at %03lXh, IRQ %d.\n",
     lp->card_name, dev->dev_addr[0], dev->base_addr, dev->irq);

 if (lp->backplane)
  arc_printk(D_NORMAL, dev, "Using backplane mode.\n");

 if (lp->timeout != 3)
  arc_printk(D_NORMAL, dev, "Using extended timeout value of %d\n",
      lp->timeout);

 arc_printk(D_NORMAL, dev, "Using CKP %d - data rate %s\n",
     lp->setup >> 1,
     clockrates[3 -
         ((lp->setup2 & 0xF0) >> 4) +
         ((lp->setup & 0x0F) >> 1)]);




 if (register_netdev(dev)) {
  free_irq(dev->irq, dev);
  return -EIO;
 }
 return 0;
}
