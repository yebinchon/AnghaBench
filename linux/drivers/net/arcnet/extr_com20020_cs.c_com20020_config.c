
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int io_lines; int dev; int irq; TYPE_1__** resource; struct com20020_dev* priv; } ;
struct net_device {int base_addr; int irq; } ;
struct com20020_dev {struct net_device* dev; } ;
struct arcnet_local {char* card_name; int card_flags; } ;
struct TYPE_2__ {int start; } ;


 int ARC_CAN_10MBIT ;
 int ENODEV ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ com20020_check (struct net_device*) ;
 int com20020_found (struct net_device*,int ) ;
 int com20020_release (struct pcmcia_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_notice (int *,char*) ;
 int netdev_dbg (struct net_device*,char*,int,int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_request_io (struct pcmcia_device*) ;
 int regdump (struct net_device*) ;

__attribute__((used)) static int com20020_config(struct pcmcia_device *link)
{
 struct arcnet_local *lp;
 struct com20020_dev *info;
 struct net_device *dev;
 int i, ret;
 int ioaddr;

 info = link->priv;
 dev = info->dev;

 dev_dbg(&link->dev, "config...\n");

 dev_dbg(&link->dev, "com20020_config\n");

 dev_dbg(&link->dev, "baseport1 is %Xh\n",
  (unsigned int)link->resource[0]->start);

 i = -ENODEV;
 link->io_lines = 16;

 if (!link->resource[0]->start) {
  for (ioaddr = 0x100; ioaddr < 0x400; ioaddr += 0x10) {
   link->resource[0]->start = ioaddr;
   i = pcmcia_request_io(link);
   if (i == 0)
    break;
  }
 } else {
  i = pcmcia_request_io(link);
 }

 if (i != 0) {
  dev_dbg(&link->dev, "requestIO failed totally!\n");
  goto failed;
 }

 ioaddr = dev->base_addr = link->resource[0]->start;
 dev_dbg(&link->dev, "got ioaddr %Xh\n", ioaddr);

 dev_dbg(&link->dev, "request IRQ %d\n",
  link->irq);
 if (!link->irq) {
  dev_dbg(&link->dev, "requestIRQ failed totally!\n");
  goto failed;
 }

 dev->irq = link->irq;

 ret = pcmcia_enable_device(link);
 if (ret)
  goto failed;

 if (com20020_check(dev)) {
  regdump(dev);
  goto failed;
 }

 lp = netdev_priv(dev);
 lp->card_name = "PCMCIA COM20020";
 lp->card_flags = ARC_CAN_10MBIT;

 SET_NETDEV_DEV(dev, &link->dev);

 i = com20020_found(dev, 0);

 if (i != 0) {
  dev_notice(&link->dev,
      "com20020_found() failed\n");
  goto failed;
 }

 netdev_dbg(dev, "port %#3lx, irq %d\n",
     dev->base_addr, dev->irq);
 return 0;

failed:
 dev_dbg(&link->dev, "com20020_config failed...\n");
 com20020_release(link);
 return -ENODEV;
}
