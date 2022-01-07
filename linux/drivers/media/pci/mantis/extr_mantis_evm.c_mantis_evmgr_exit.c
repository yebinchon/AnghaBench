
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {int hif_evm_work; struct mantis_pci* ca_priv; } ;


 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*) ;
 int flush_work (int *) ;
 int mantis_hif_exit (struct mantis_ca*) ;
 int mantis_pcmcia_exit (struct mantis_ca*) ;

void mantis_evmgr_exit(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Mantis Host I/F Event manager exiting");
 flush_work(&ca->hif_evm_work);
 mantis_hif_exit(ca);
 mantis_pcmcia_exit(ca);
}
