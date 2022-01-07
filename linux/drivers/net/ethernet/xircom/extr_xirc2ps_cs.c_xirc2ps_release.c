
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {struct net_device* priv; TYPE_1__** resource; int dev; } ;
struct net_device {int dummy; } ;
struct local_info {scalar_t__ dingo_ccr; scalar_t__ dingo; } ;
struct TYPE_2__ {scalar_t__ end; } ;


 int dev_dbg (int *,char*) ;
 int iounmap (scalar_t__) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void
xirc2ps_release(struct pcmcia_device *link)
{
 dev_dbg(&link->dev, "release\n");

 if (link->resource[2]->end) {
  struct net_device *dev = link->priv;
  struct local_info *local = netdev_priv(dev);
  if (local->dingo)
   iounmap(local->dingo_ccr - 0x0800);
 }
 pcmcia_disable_device(link);
}
