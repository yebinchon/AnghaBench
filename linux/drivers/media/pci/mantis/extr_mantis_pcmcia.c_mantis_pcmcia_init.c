
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int num; } ;
struct mantis_ca {int en50221; int slot_state; struct mantis_pci* ca_priv; } ;


 int DVB_CA_EN50221_CAMCHANGE_INSERTED ;
 int DVB_CA_EN50221_CAMCHANGE_REMOVED ;
 int MANTIS_DEBUG ;
 int MANTIS_GPIF_DETSTAT ;
 int MANTIS_GPIF_IRQCFG ;
 int MANTIS_GPIF_STATUS ;
 int MANTIS_INT_IRQ0 ;
 int MANTIS_MASK_PLUGIN ;
 int MANTIS_MASK_PLUGOUT ;
 int MODULE_INSERTED ;
 int MODULE_XTRACTED ;
 int dprintk (int ,int,char*,int ) ;
 int dvb_ca_en50221_camchange_irq (int *,int ,int ) ;
 int mantis_unmask_ints (struct mantis_pci*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

int mantis_pcmcia_init(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;

 u32 gpif_stat, card_stat;

 mantis_unmask_ints(mantis, MANTIS_INT_IRQ0);
 gpif_stat = mmread(MANTIS_GPIF_STATUS);
 card_stat = mmread(MANTIS_GPIF_IRQCFG);

 if (gpif_stat & MANTIS_GPIF_DETSTAT) {
  dprintk(MANTIS_DEBUG, 1, "CAM found on Adapter(%d) Slot(0)", mantis->num);
  mmwrite(card_stat | MANTIS_MASK_PLUGOUT, MANTIS_GPIF_IRQCFG);
  ca->slot_state = MODULE_INSERTED;
  dvb_ca_en50221_camchange_irq(&ca->en50221,
          0,
          DVB_CA_EN50221_CAMCHANGE_INSERTED);
 } else {
  dprintk(MANTIS_DEBUG, 1, "Empty Slot on Adapter(%d) Slot(0)", mantis->num);
  mmwrite(card_stat | MANTIS_MASK_PLUGIN, MANTIS_GPIF_IRQCFG);
  ca->slot_state = MODULE_XTRACTED;
  dvb_ca_en50221_camchange_irq(&ca->en50221,
          0,
          DVB_CA_EN50221_CAMCHANGE_REMOVED);
 }

 return 0;
}
