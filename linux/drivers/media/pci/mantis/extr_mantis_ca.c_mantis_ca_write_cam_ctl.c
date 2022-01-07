
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mantis_pci {int dummy; } ;
struct mantis_ca {struct mantis_pci* ca_priv; } ;
struct dvb_ca_en50221 {struct mantis_ca* data; } ;


 int EINVAL ;
 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*,int) ;
 int mantis_hif_write_iom (struct mantis_ca*,int ,int ) ;

__attribute__((used)) static int mantis_ca_write_cam_ctl(struct dvb_ca_en50221 *en50221, int slot, u8 addr, u8 data)
{
 struct mantis_ca *ca = en50221->data;
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Slot(%d): Request CAM control Write", slot);

 if (slot != 0)
  return -EINVAL;

 return mantis_hif_write_iom(ca, addr, data);
}
