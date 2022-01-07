
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct com20020_dev* priv; } ;
struct net_device {int dummy; } ;
struct com20020_dev {struct net_device* dev; } ;


 int netif_device_detach (struct net_device*) ;

__attribute__((used)) static int com20020_suspend(struct pcmcia_device *link)
{
 struct com20020_dev *info = link->priv;
 struct net_device *dev = info->dev;

 if (link->open)
  netif_device_detach(dev);

 return 0;
}
