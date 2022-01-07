
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {struct mantis_pci* ca_priv; } ;
struct dvb_ca_en50221 {struct mantis_ca* data; } ;


 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*,int) ;

__attribute__((used)) static int mantis_ts_control(struct dvb_ca_en50221 *en50221, int slot)
{
 struct mantis_ca *ca = en50221->data;
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Slot(%d): TS control", slot);


 return 0;
}
