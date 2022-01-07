
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int num; } ;
struct mantis_ca {int ca_lock; struct mantis_pci* ca_priv; } ;


 int MANTIS_ERROR ;
 int MANTIS_GPIF_IRQCFG ;
 int MANTIS_MASK_BRRDY ;
 int dprintk (int ,int,char*,int ) ;
 int mmread (int ) ;
 int mmwrite (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mantis_hif_exit(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;
 u32 irqcfg;

 dprintk(MANTIS_ERROR, 1, "Adapter(%d) Exiting Mantis Host Interface", mantis->num);
 mutex_lock(&ca->ca_lock);
 irqcfg = mmread(MANTIS_GPIF_IRQCFG);
 irqcfg &= ~MANTIS_MASK_BRRDY;
 mmwrite(irqcfg, MANTIS_GPIF_IRQCFG);
 mutex_unlock(&ca->ca_lock);
}
