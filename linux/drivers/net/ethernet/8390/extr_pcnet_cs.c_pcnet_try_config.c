
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcnet_dev {int flags; } ;
struct pcmcia_device {int manf_id; int card_id; int config_index; int config_base; int dev; TYPE_1__** resource; scalar_t__ irq; int config_flags; struct net_device* priv; } ;
struct net_device {int if_port; int base_addr; scalar_t__ irq; } ;
struct hw_info {int dummy; } ;
struct TYPE_2__ {int start; } ;


 int CONF_ENABLE_SPKR ;
 int HAS_MISC_REG ;
 int MANFID_IBM ;
 struct pcnet_dev* PRIV (struct net_device*) ;
 int PRODID_IBM_HOME_AND_AWAY ;
 int dev_info (int *,char*) ;
 int dev_notice (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct hw_info* get_ax88190 (struct pcmcia_device*) ;
 struct hw_info* get_dl10019 (struct pcmcia_device*) ;
 struct hw_info* get_hwinfo (struct pcmcia_device*) ;
 struct hw_info* get_hwired (struct pcmcia_device*) ;
 struct hw_info* get_prom (struct pcmcia_device*) ;
 int if_port ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int*) ;
 int pcnet_confcheck ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static struct hw_info *pcnet_try_config(struct pcmcia_device *link,
     int *has_shmem, int try)
{
 struct net_device *dev = link->priv;
 struct hw_info *local_hw_info;
 struct pcnet_dev *info = PRIV(dev);
 int priv = try;
 int ret;

 ret = pcmcia_loop_config(link, pcnet_confcheck, &priv);
 if (ret) {
  dev_warn(&link->dev, "no useable port range found\n");
  return ((void*)0);
 }
 *has_shmem = (priv & 0x10);

 if (!link->irq)
  return ((void*)0);

 if (resource_size(link->resource[1]) == 8)
  link->config_flags |= CONF_ENABLE_SPKR;

 if ((link->manf_id == MANFID_IBM) &&
     (link->card_id == PRODID_IBM_HOME_AND_AWAY))
  link->config_index |= 0x10;

 ret = pcmcia_enable_device(link);
 if (ret)
  return ((void*)0);

 dev->irq = link->irq;
 dev->base_addr = link->resource[0]->start;

 if (info->flags & HAS_MISC_REG) {
  if ((if_port == 1) || (if_port == 2))
   dev->if_port = if_port;
  else
   dev_notice(&link->dev, "invalid if_port requested\n");
 } else
  dev->if_port = 0;

 if ((link->config_base == 0x03c0) &&
     (link->manf_id == 0x149) && (link->card_id == 0xc1ab)) {
  dev_info(&link->dev,
   "this is an AX88190 card - use axnet_cs instead.\n");
  return ((void*)0);
 }

 local_hw_info = get_hwinfo(link);
 if (!local_hw_info)
  local_hw_info = get_prom(link);
 if (!local_hw_info)
  local_hw_info = get_dl10019(link);
 if (!local_hw_info)
  local_hw_info = get_ax88190(link);
 if (!local_hw_info)
  local_hw_info = get_hwired(link);

 return local_hw_info;
}
