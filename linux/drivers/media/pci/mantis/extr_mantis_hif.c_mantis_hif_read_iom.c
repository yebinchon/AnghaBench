
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mantis_pci {int num; } ;
struct mantis_ca {int ca_lock; struct mantis_pci* ca_priv; } ;


 int EREMOTEIO ;
 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int MANTIS_GPIF_ADDR ;
 int MANTIS_GPIF_BRADDR ;
 int MANTIS_GPIF_BRBYTES ;
 int MANTIS_GPIF_DIN ;
 int MANTIS_GPIF_HIFRDWRN ;
 int MANTIS_GPIF_PCMCIAIOM ;
 int MANTIS_GPIF_PCMCIAREG ;
 int MANTIS_HIF_STATUS ;
 int dprintk (int ,int,char*,int) ;
 scalar_t__ mantis_hif_sbuf_opdone_wait (struct mantis_ca*) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

int mantis_hif_read_iom(struct mantis_ca *ca, u32 addr)
{
 struct mantis_pci *mantis = ca->ca_priv;
 u32 data, hif_addr = 0;

 dprintk(MANTIS_DEBUG, 1, "Adapter(%d) Slot(0): Request HIF I/O Read", mantis->num);
 mutex_lock(&ca->ca_lock);
 hif_addr &= ~MANTIS_GPIF_PCMCIAREG;
 hif_addr |= MANTIS_GPIF_PCMCIAIOM;
 hif_addr |= MANTIS_HIF_STATUS;
 hif_addr |= addr;

 mmwrite(hif_addr, MANTIS_GPIF_BRADDR);
 mmwrite(1, MANTIS_GPIF_BRBYTES);
 udelay(20);
 mmwrite(hif_addr | MANTIS_GPIF_HIFRDWRN, MANTIS_GPIF_ADDR);

 if (mantis_hif_sbuf_opdone_wait(ca) != 0) {
  dprintk(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): HIF Smart Buffer operation failed", mantis->num);
  mutex_unlock(&ca->ca_lock);
  return -EREMOTEIO;
 }
 data = mmread(MANTIS_GPIF_DIN);
 dprintk(MANTIS_DEBUG, 1, "I/O Read: 0x%02x", data);
 udelay(50);
 mutex_unlock(&ca->ca_lock);

 return (u8) data;
}
