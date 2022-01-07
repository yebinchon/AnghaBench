
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet_dev {int flags; int base; } ;
struct pcmcia_device {int dev; int priv; } ;


 struct pcnet_dev* PRIV (int ) ;
 int USE_SHMEM ;
 int dev_dbg (int *,char*) ;
 int iounmap (int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void pcnet_release(struct pcmcia_device *link)
{
 struct pcnet_dev *info = PRIV(link->priv);

 dev_dbg(&link->dev, "pcnet_release\n");

 if (info->flags & USE_SHMEM)
  iounmap(info->base);

 pcmcia_disable_device(link);
}
