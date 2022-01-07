
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct axnet_dev {int active_low; } ;


 int AX88190_init (struct net_device*,int) ;
 int CISREG_CCSR ;
 struct axnet_dev* PRIV (struct net_device*) ;
 int axnet_reset_8390 (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int pcmcia_write_config_byte (struct pcmcia_device*,int ,int) ;

__attribute__((used)) static int axnet_resume(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;
 struct axnet_dev *info = PRIV(dev);

 if (link->open) {
  if (info->active_low == 1)
   pcmcia_write_config_byte(link, CISREG_CCSR, 0x04);

  axnet_reset_8390(dev);
  AX88190_init(dev, 1);
  netif_device_attach(dev);
 }

 return 0;
}
