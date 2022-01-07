
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mantis_slot {int slave_cfg; } ;
struct mantis_pci {int num; } ;
struct mantis_ca {int ca_lock; struct mantis_pci* ca_priv; struct mantis_slot* slot; } ;


 int EREMOTEIO ;
 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int MANTIS_GPIF_ADDR ;
 int MANTIS_GPIF_CFGSLA ;
 int MANTIS_GPIF_DOUT ;
 int MANTIS_GPIF_HIFRDWRN ;
 int MANTIS_GPIF_PCMCIAIOM ;
 int MANTIS_GPIF_PCMCIAREG ;
 int MANTIS_HIF_STATUS ;
 int dprintk (int ,int,char*,int ,...) ;
 scalar_t__ mantis_hif_write_wait (struct mantis_ca*) ;
 int mmwrite (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mantis_hif_write_mem(struct mantis_ca *ca, u32 addr, u8 data)
{
 struct mantis_slot *slot = ca->slot;
 struct mantis_pci *mantis = ca->ca_priv;
 u32 hif_addr = 0;

 dprintk(MANTIS_DEBUG, 1, "Adapter(%d) Slot(0): Request HIF Mem Write", mantis->num);
 mutex_lock(&ca->ca_lock);
 hif_addr &= ~MANTIS_GPIF_HIFRDWRN;
 hif_addr &= ~MANTIS_GPIF_PCMCIAREG;
 hif_addr &= ~MANTIS_GPIF_PCMCIAIOM;
 hif_addr |= MANTIS_HIF_STATUS;
 hif_addr |= addr;

 mmwrite(slot->slave_cfg, MANTIS_GPIF_CFGSLA);
 mmwrite(hif_addr, MANTIS_GPIF_ADDR);
 mmwrite(data, MANTIS_GPIF_DOUT);

 if (mantis_hif_write_wait(ca) != 0) {
  dprintk(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): HIF Smart Buffer operation failed", mantis->num);
  mutex_unlock(&ca->ca_lock);
  return -EREMOTEIO;
 }
 dprintk(MANTIS_DEBUG, 1, "Mem Write: (0x%02x to 0x%02x)", data, addr);
 mutex_unlock(&ca->ca_lock);

 return 0;
}
