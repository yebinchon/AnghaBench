
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pcmcia_device {int io_lines; int dev; TYPE_1__** resource; int irq; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; int if_port; int dev_addr; int irq; } ;
typedef int mace_private ;
struct TYPE_2__ {unsigned int start; } ;


 int ENODEV ;
 size_t ETH_ALEN ;
 int MACE_CHIPIDH ;
 int MACE_CHIPIDL ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int dev_dbg (int *,char*,...) ;
 int * if_names ;
 int if_port ;
 int kfree (int *) ;
 int mace_init (int *,unsigned int,int ) ;
 int mace_interrupt ;
 char mace_read (int *,unsigned int,int ) ;
 int memcpy (int ,int *,size_t) ;
 int netdev_info (struct net_device*,char*,unsigned int,int ,int ,int ) ;
 int * netdev_priv (struct net_device*) ;
 int nmclan_release (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 size_t pcmcia_get_tuple (struct pcmcia_device*,int,int **) ;
 int pcmcia_request_io (struct pcmcia_device*) ;
 int pcmcia_request_irq (struct pcmcia_device*,int ) ;
 int pr_notice (char*,...) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int nmclan_config(struct pcmcia_device *link)
{
  struct net_device *dev = link->priv;
  mace_private *lp = netdev_priv(dev);
  u8 *buf;
  size_t len;
  int i, ret;
  unsigned int ioaddr;

  dev_dbg(&link->dev, "nmclan_config\n");

  link->io_lines = 5;
  ret = pcmcia_request_io(link);
  if (ret)
   goto failed;
  ret = pcmcia_request_irq(link, mace_interrupt);
  if (ret)
   goto failed;
  ret = pcmcia_enable_device(link);
  if (ret)
   goto failed;

  dev->irq = link->irq;
  dev->base_addr = link->resource[0]->start;

  ioaddr = dev->base_addr;


  len = pcmcia_get_tuple(link, 0x80, &buf);
  if (!buf || len < ETH_ALEN) {
   kfree(buf);
   goto failed;
  }
  memcpy(dev->dev_addr, buf, ETH_ALEN);
  kfree(buf);


  {
    char sig[2];

    sig[0] = mace_read(lp, ioaddr, MACE_CHIPIDL);
    sig[1] = mace_read(lp, ioaddr, MACE_CHIPIDH);
    if ((sig[0] == 0x40) && ((sig[1] & 0x0F) == 0x09)) {
      dev_dbg(&link->dev, "nmclan_cs configured: mace id=%x %x\n",
     sig[0], sig[1]);
    } else {
      pr_notice("mace id not found: %x %x should be 0x40 0x?9\n",
  sig[0], sig[1]);
      return -ENODEV;
    }
  }

  if(mace_init(lp, ioaddr, dev->dev_addr) == -1)
   goto failed;


  if (if_port <= 2)
    dev->if_port = if_port;
  else
    pr_notice("invalid if_port requested\n");

  SET_NETDEV_DEV(dev, &link->dev);

  i = register_netdev(dev);
  if (i != 0) {
    pr_notice("register_netdev() failed\n");
    goto failed;
  }

  netdev_info(dev, "nmclan: port %#3lx, irq %d, %s port, hw_addr %pM\n",
       dev->base_addr, dev->irq, if_names[dev->if_port], dev->dev_addr);
  return 0;

failed:
 nmclan_release(link);
 return -ENODEV;
}
