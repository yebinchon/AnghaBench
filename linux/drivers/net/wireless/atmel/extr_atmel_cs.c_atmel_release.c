
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ priv; int dev; } ;
struct net_device {int dummy; } ;
struct local_info {struct net_device* eth_dev; } ;


 int dev_dbg (int *,char*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int stop_atmel_card (struct net_device*) ;

__attribute__((used)) static void atmel_release(struct pcmcia_device *link)
{
 struct net_device *dev = ((struct local_info *)link->priv)->eth_dev;

 dev_dbg(&link->dev, "atmel_release\n");

 if (dev)
  stop_atmel_card(dev);
 ((struct local_info *)link->priv)->eth_dev = ((void*)0);

 pcmcia_disable_device(link);
}
