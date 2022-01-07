
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcmciamtd_dev {TYPE_2__* mtd_info; TYPE_1__* p_dev; } ;
struct pcmcia_device {struct pcmciamtd_dev* priv; } ;
struct TYPE_5__ {int index; } ;
struct TYPE_4__ {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int map_destroy (TYPE_2__*) ;
 int mtd_device_unregister (TYPE_2__*) ;
 int pcmciamtd_release (struct pcmcia_device*) ;
 int pr_debug (char*,struct pcmcia_device*) ;

__attribute__((used)) static void pcmciamtd_detach(struct pcmcia_device *link)
{
 struct pcmciamtd_dev *dev = link->priv;

 pr_debug("link=0x%p\n", link);

 if(dev->mtd_info) {
  mtd_device_unregister(dev->mtd_info);
  dev_info(&dev->p_dev->dev, "mtd%d: Removing\n",
    dev->mtd_info->index);
  map_destroy(dev->mtd_info);
 }

 pcmciamtd_release(link);
}
