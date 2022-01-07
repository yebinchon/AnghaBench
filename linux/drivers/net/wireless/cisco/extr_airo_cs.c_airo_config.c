
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_flags; scalar_t__ priv; int dev; TYPE_1__** resource; int irq; } ;
struct local_info {int eth_dev; } ;
struct TYPE_2__ {int start; } ;


 int CONF_AUTO_AUDIO ;
 int CONF_AUTO_SET_IO ;
 int CONF_AUTO_SET_VPP ;
 int CONF_ENABLE_IRQ ;
 int ENODEV ;
 int airo_cs_config_check ;
 int airo_release (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 int init_airo_card (int ,int ,int,int *) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;

__attribute__((used)) static int airo_config(struct pcmcia_device *link)
{
 int ret;

 dev_dbg(&link->dev, "airo_config\n");

 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_VPP |
  CONF_AUTO_AUDIO | CONF_AUTO_SET_IO;

 ret = pcmcia_loop_config(link, airo_cs_config_check, ((void*)0));
 if (ret)
  goto failed;

 if (!link->irq)
  goto failed;

 ret = pcmcia_enable_device(link);
 if (ret)
  goto failed;
 ((struct local_info *)link->priv)->eth_dev =
  init_airo_card(link->irq,
          link->resource[0]->start, 1, &link->dev);
 if (!((struct local_info *)link->priv)->eth_dev)
  goto failed;

 return 0;

 failed:
 airo_release(link);
 return -ENODEV;
}
