
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {struct mantis_ca* mantis_ca; } ;
struct mantis_ca {int en50221; } ;


 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int dprintk (int ,int,char*) ;
 int dvb_ca_en50221_release (int *) ;
 int kfree (struct mantis_ca*) ;
 int mantis_evmgr_exit (struct mantis_ca*) ;

void mantis_ca_exit(struct mantis_pci *mantis)
{
 struct mantis_ca *ca = mantis->mantis_ca;

 dprintk(MANTIS_DEBUG, 1, "Mantis CA exit");
 if (!ca)
  return;

 mantis_evmgr_exit(ca);
 dprintk(MANTIS_ERROR, 1, "Unregistering EN50221 device");
 dvb_ca_en50221_release(&ca->en50221);

 kfree(ca);
}
