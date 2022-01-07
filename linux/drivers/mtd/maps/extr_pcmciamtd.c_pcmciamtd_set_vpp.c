
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmciamtd_dev {int vpp; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int dummy; } ;
struct map_info {scalar_t__ map_priv_1; } ;


 int pcmcia_fixup_vpp (struct pcmcia_device*,int ) ;
 int pcmcia_vpp_lock ;
 int pcmcia_vpp_refcnt ;
 int pr_debug (char*,struct pcmciamtd_dev*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcmciamtd_set_vpp(struct map_info *map, int on)
{
 struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
 struct pcmcia_device *link = dev->p_dev;
 unsigned long flags;

 pr_debug("dev = %p on = %d vpp = %d\n\n", dev, on, dev->vpp);
 spin_lock_irqsave(&pcmcia_vpp_lock, flags);
 if (on) {
  if (++pcmcia_vpp_refcnt == 1)
   pcmcia_fixup_vpp(link, dev->vpp);
 } else {
  if (--pcmcia_vpp_refcnt == 0)
   pcmcia_fixup_vpp(link, 0);
 }
 spin_unlock_irqrestore(&pcmcia_vpp_lock, flags);
}
