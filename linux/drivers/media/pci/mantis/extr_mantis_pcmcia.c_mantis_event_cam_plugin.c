
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int num; } ;
struct mantis_ca {scalar_t__ slot_state; struct mantis_pci* ca_priv; } ;


 int MANTIS_CARD_RESET ;
 int MANTIS_DEBUG ;
 int MANTIS_GPIF_IRQCFG ;
 int MANTIS_MASK_PLUGIN ;
 int MANTIS_MASK_PLUGOUT ;
 scalar_t__ MODULE_INSERTED ;
 scalar_t__ MODULE_XTRACTED ;
 int dprintk (int ,int,char*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;
 int udelay (int) ;

void mantis_event_cam_plugin(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;

 u32 gpif_irqcfg;

 if (ca->slot_state == MODULE_XTRACTED) {
  dprintk(MANTIS_DEBUG, 1, "Event: CAM Plugged IN: Adapter(%d) Slot(0)", mantis->num);
  udelay(50);
  mmwrite(0xda000000, MANTIS_CARD_RESET);
  gpif_irqcfg = mmread(MANTIS_GPIF_IRQCFG);
  gpif_irqcfg |= MANTIS_MASK_PLUGOUT;
  gpif_irqcfg &= ~MANTIS_MASK_PLUGIN;
  mmwrite(gpif_irqcfg, MANTIS_GPIF_IRQCFG);
  udelay(500);
  ca->slot_state = MODULE_INSERTED;
 }
 udelay(100);
}
