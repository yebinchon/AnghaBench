
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {struct mantis_pci* ca_priv; } ;


 int MANTIS_CARD_PLUGIN ;
 int MANTIS_CARD_PLUGOUT ;
 int MANTIS_GPIF_STATUS ;
 int MANTIS_INT_IRQ0 ;
 int mantis_mask_ints (struct mantis_pci*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

void mantis_pcmcia_exit(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;

 mmwrite(mmread(MANTIS_GPIF_STATUS) & (~MANTIS_CARD_PLUGOUT | ~MANTIS_CARD_PLUGIN), MANTIS_GPIF_STATUS);
 mantis_mask_ints(mantis, MANTIS_INT_IRQ0);
}
