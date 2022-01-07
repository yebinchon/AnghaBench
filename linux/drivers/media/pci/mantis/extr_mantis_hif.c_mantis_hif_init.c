
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_slot {int slave_cfg; } ;
struct mantis_pci {int num; } ;
struct mantis_ca {int ca_lock; struct mantis_pci* ca_priv; struct mantis_slot* slot; } ;


 int MANTIS_ERROR ;
 int MANTIS_GPIF_IRQCFG ;
 int MANTIS_MASK_BRRDY ;
 int MANTIS_MASK_EXTIRQ ;
 int MANTIS_MASK_OTHERR ;
 int MANTIS_MASK_OVFLW ;
 int MANTIS_MASK_WRACK ;
 int MANTIS_MASK_WSTO ;
 int dprintk (int ,int,char*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mantis_hif_init(struct mantis_ca *ca)
{
 struct mantis_slot *slot = ca->slot;
 struct mantis_pci *mantis = ca->ca_priv;
 u32 irqcfg;

 slot[0].slave_cfg = 0x70773028;
 dprintk(MANTIS_ERROR, 1, "Adapter(%d) Initializing Mantis Host Interface", mantis->num);

 mutex_lock(&ca->ca_lock);
 irqcfg = mmread(MANTIS_GPIF_IRQCFG);
 irqcfg = MANTIS_MASK_BRRDY |
   MANTIS_MASK_WRACK |
   MANTIS_MASK_EXTIRQ |
   MANTIS_MASK_WSTO |
   MANTIS_MASK_OTHERR |
   MANTIS_MASK_OVFLW;

 mmwrite(irqcfg, MANTIS_GPIF_IRQCFG);
 mutex_unlock(&ca->ca_lock);

 return 0;
}
