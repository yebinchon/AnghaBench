
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; struct com20020_dev* priv; } ;
struct net_device {scalar_t__ irq; } ;
struct com20020_dev {struct net_device* dev; } ;


 int com20020_release (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 int free_irq (scalar_t__,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct com20020_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void com20020_detach(struct pcmcia_device *link)
{
 struct com20020_dev *info = link->priv;
 struct net_device *dev = info->dev;

 dev_dbg(&link->dev, "detach...\n");

 dev_dbg(&link->dev, "com20020_detach\n");

 dev_dbg(&link->dev, "unregister...\n");

 unregister_netdev(dev);




 if (dev->irq)
  free_irq(dev->irq, dev);

 com20020_release(link);


 dev_dbg(&link->dev, "unlinking...\n");
 if (link->priv) {
  dev = info->dev;
  if (dev) {
   dev_dbg(&link->dev, "kfree...\n");
   free_netdev(dev);
  }
  dev_dbg(&link->dev, "kfree2...\n");
  kfree(info);
 }

}
