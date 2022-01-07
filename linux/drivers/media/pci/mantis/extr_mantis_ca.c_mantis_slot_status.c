
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {scalar_t__ slot_state; struct mantis_pci* ca_priv; } ;
struct dvb_ca_en50221 {struct mantis_ca* data; } ;


 int DVB_CA_EN50221_POLL_CAM_PRESENT ;
 int DVB_CA_EN50221_POLL_CAM_READY ;
 int MANTIS_DEBUG ;
 scalar_t__ MODULE_INSERTED ;
 int dprintk (int ,int,char*,...) ;

__attribute__((used)) static int mantis_slot_status(struct dvb_ca_en50221 *en50221, int slot, int open)
{
 struct mantis_ca *ca = en50221->data;
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Slot(%d): Poll Slot status", slot);

 if (ca->slot_state == MODULE_INSERTED) {
  dprintk(MANTIS_DEBUG, 1, "CA Module present and ready");
  return DVB_CA_EN50221_POLL_CAM_PRESENT | DVB_CA_EN50221_POLL_CAM_READY;
 } else {
  dprintk(MANTIS_DEBUG, 1, "CA Module not present or not ready");
 }

 return 0;
}
