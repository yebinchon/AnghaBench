
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_private {int base; } ;
struct pcmcia_device {struct net_device* priv; TYPE_1__** resource; int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ end; } ;


 int dev_dbg (int *,char*) ;
 int iounmap (int ) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void smc91c92_release(struct pcmcia_device *link)
{
 dev_dbg(&link->dev, "smc91c92_release\n");
 if (link->resource[2]->end) {
  struct net_device *dev = link->priv;
  struct smc_private *smc = netdev_priv(dev);
  iounmap(smc->base);
 }
 pcmcia_disable_device(link);
}
