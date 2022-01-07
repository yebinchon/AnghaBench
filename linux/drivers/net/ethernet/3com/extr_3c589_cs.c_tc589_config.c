
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pcmcia_device {scalar_t__ manf_id; scalar_t__ card_id; int io_lines; int dev; TYPE_1__** resource; int irq; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; int if_port; scalar_t__ dev_addr; int irq; } ;
typedef int __be16 ;
struct TYPE_2__ {int start; } ;


 int EL3WINDOW (int ) ;
 int ENODEV ;
 scalar_t__ MANFID_3COM ;
 scalar_t__ PRODID_3COM_3C562 ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int el3_interrupt ;
 int htons (int) ;
 int * if_names ;
 int if_port ;
 int inl (unsigned int) ;
 int kfree (int *) ;
 int le16_to_cpu (int ) ;
 int netdev_info (struct net_device*,char*,...) ;
 int outw (int,unsigned int) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 size_t pcmcia_get_tuple (struct pcmcia_device*,int,int **) ;
 int pcmcia_request_io (struct pcmcia_device*) ;
 int pcmcia_request_irq (struct pcmcia_device*,int ) ;
 int read_eeprom (unsigned int,int) ;
 scalar_t__ register_netdev (struct net_device*) ;
 int tc589_release (struct pcmcia_device*) ;

__attribute__((used)) static int tc589_config(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;
 __be16 *phys_addr;
 int ret, i, j, multi = 0, fifo;
 unsigned int ioaddr;
 static const char * const ram_split[] = {"5:3", "3:1", "1:1", "3:5"};
 u8 *buf;
 size_t len;

 dev_dbg(&link->dev, "3c589_config\n");

 phys_addr = (__be16 *)dev->dev_addr;

 if (link->manf_id != MANFID_3COM)
  dev_info(&link->dev, "hmmm, is this really a 3Com card??\n");
 multi = (link->card_id == PRODID_3COM_3C562);

 link->io_lines = 16;


 for (i = j = 0; j < 0x400; j += 0x10) {
  if (multi && (j & 0x80))
   continue;
  link->resource[0]->start = j ^ 0x300;
  i = pcmcia_request_io(link);
  if (i == 0)
   break;
 }
 if (i != 0)
  goto failed;

 ret = pcmcia_request_irq(link, el3_interrupt);
 if (ret)
  goto failed;

 ret = pcmcia_enable_device(link);
 if (ret)
  goto failed;

 dev->irq = link->irq;
 dev->base_addr = link->resource[0]->start;
 ioaddr = dev->base_addr;
 EL3WINDOW(0);




 len = pcmcia_get_tuple(link, 0x88, &buf);
 if (buf && len >= 6) {
  for (i = 0; i < 3; i++)
   phys_addr[i] = htons(le16_to_cpu(buf[i*2]));
  kfree(buf);
 } else {
  kfree(buf);
  for (i = 0; i < 3; i++)
   phys_addr[i] = htons(read_eeprom(ioaddr, i));
  if (phys_addr[0] == htons(0x6060)) {
   dev_err(&link->dev, "IO port conflict at 0x%03lx-0x%03lx\n",
     dev->base_addr, dev->base_addr+15);
   goto failed;
  }
 }





 outw(0x3f00, ioaddr + 8);
 fifo = inl(ioaddr);


 if ((if_port >= 0) && (if_port <= 3))
  dev->if_port = if_port;
 else
  dev_err(&link->dev, "invalid if_port requested\n");

 SET_NETDEV_DEV(dev, &link->dev);

 if (register_netdev(dev) != 0) {
  dev_err(&link->dev, "register_netdev() failed\n");
  goto failed;
 }

 netdev_info(dev, "3Com 3c%s, io %#3lx, irq %d, hw_addr %pM\n",
   (multi ? "562" : "589"), dev->base_addr, dev->irq,
   dev->dev_addr);
 netdev_info(dev, "  %dK FIFO split %s Rx:Tx, %s xcvr\n",
   (fifo & 7) ? 32 : 8, ram_split[(fifo >> 16) & 3],
   if_names[dev->if_port]);
 return 0;

failed:
 tc589_release(link);
 return -ENODEV;
}
