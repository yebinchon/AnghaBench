
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;
struct mantis_ca {int hif_evm_work; struct mantis_pci* ca_priv; } ;


 int INIT_WORK (int *,int ) ;
 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*) ;
 int mantis_hif_init (struct mantis_ca*) ;
 int mantis_hifevm_work ;
 int mantis_pcmcia_init (struct mantis_ca*) ;
 int schedule_work (int *) ;

int mantis_evmgr_init(struct mantis_ca *ca)
{
 struct mantis_pci *mantis = ca->ca_priv;

 dprintk(MANTIS_DEBUG, 1, "Initializing Mantis Host I/F Event manager");
 INIT_WORK(&ca->hif_evm_work, mantis_hifevm_work);
 mantis_pcmcia_init(ca);
 schedule_work(&ca->hif_evm_work);
 mantis_hif_init(ca);
 return 0;
}
