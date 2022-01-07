
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int gpif_status; int num; } ;
struct mantis_ca {int hif_write_wq; struct mantis_pci* ca_priv; } ;


 int EREMOTEIO ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int MANTIS_GPIF_STATUS ;
 int MANTIS_GPIF_WRACK ;
 int MANTIS_SBUF_OPDONE ;
 int dprintk (int ,int,char*,...) ;
 int mmread (int ) ;
 int msecs_to_jiffies (int) ;
 int udelay (int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int mantis_hif_write_wait(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;
 u32 opdone = 0, timeout = 0;
 int rc = 0;

 if (wait_event_timeout(ca->hif_write_wq,
          mantis->gpif_status & MANTIS_GPIF_WRACK,
          msecs_to_jiffies(500)) == -ERESTARTSYS) {

  dprintk(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): Write ACK timed out !", mantis->num);
  rc = -EREMOTEIO;
 }
 dprintk(MANTIS_DEBUG, 1, "Write Acknowledged");
 mantis->gpif_status &= ~MANTIS_GPIF_WRACK;
 while (!opdone) {
  opdone = (mmread(MANTIS_GPIF_STATUS) & MANTIS_SBUF_OPDONE);
  udelay(500);
  timeout++;
  if (timeout > 100) {
   dprintk(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): Write operation timed out!", mantis->num);
   rc = -ETIMEDOUT;
   break;
  }
 }
 dprintk(MANTIS_DEBUG, 1, "HIF Write success");
 return rc;
}
