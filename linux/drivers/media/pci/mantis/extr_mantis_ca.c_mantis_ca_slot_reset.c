
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {int en50221; struct mantis_pci* ca_priv; } ;
struct dvb_ca_en50221 {struct mantis_ca* data; } ;


 int MANTIS_DEBUG ;
 int MANTIS_PCMCIA_RESET ;
 int dprintk (int ,int,char*,int) ;
 int dvb_ca_en50221_camready_irq (int *,int ) ;
 int mmwrite (int,int ) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static int mantis_ca_slot_reset(struct dvb_ca_en50221 *en50221, int slot)
{
 struct mantis_ca *ca = en50221->data;
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Slot(%d): Slot RESET", slot);
 udelay(500);
 mmwrite(0xda, MANTIS_PCMCIA_RESET);
 udelay(500);
 mmwrite(0x00, MANTIS_PCMCIA_RESET);
 msleep(1000);
 dvb_ca_en50221_camready_irq(&ca->en50221, 0);

 return 0;
}
