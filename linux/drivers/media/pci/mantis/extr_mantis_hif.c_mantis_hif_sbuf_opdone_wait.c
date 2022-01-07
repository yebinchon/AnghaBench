
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int num; } ;
struct mantis_ca {int hif_event; int hif_opdone_wq; struct mantis_pci* ca_priv; } ;


 int EREMOTEIO ;
 int ERESTARTSYS ;
 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int MANTIS_SBUF_OPDONE ;
 int dprintk (int ,int,char*,...) ;
 int msecs_to_jiffies (int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int mantis_hif_sbuf_opdone_wait(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;
 int rc = 0;

 if (wait_event_timeout(ca->hif_opdone_wq,
          ca->hif_event & MANTIS_SBUF_OPDONE,
          msecs_to_jiffies(500)) == -ERESTARTSYS) {

  dprintk(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): Smart buffer operation timeout !", mantis->num);
  rc = -EREMOTEIO;
 }
 dprintk(MANTIS_DEBUG, 1, "Smart Buffer Operation complete");
 ca->hif_event &= ~MANTIS_SBUF_OPDONE;
 return rc;
}
