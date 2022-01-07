
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {struct mantis_pci* ca_priv; } ;
struct dvb_ca_en50221 {struct mantis_ca* data; } ;


 int EINVAL ;
 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*,int) ;
 int mantis_hif_read_mem (struct mantis_ca*,int) ;

__attribute__((used)) static int mantis_ca_read_attr_mem(struct dvb_ca_en50221 *en50221, int slot, int addr)
{
 struct mantis_ca *ca = en50221->data;
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Slot(%d): Request Attribute Mem Read", slot);

 if (slot != 0)
  return -EINVAL;

 return mantis_hif_read_mem(ca, addr);
}
