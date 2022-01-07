
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mantis_pci {int dummy; } ;


 int kfree (struct mantis_pci*) ;
 int mantis_dma_exit (struct mantis_pci*) ;
 int mantis_dvb_exit (struct mantis_pci*) ;
 int mantis_i2c_exit (struct mantis_pci*) ;
 int mantis_pci_exit (struct mantis_pci*) ;
 struct mantis_pci* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void hopper_pci_remove(struct pci_dev *pdev)
{
 struct mantis_pci *mantis = pci_get_drvdata(pdev);

 if (mantis) {
  mantis_dvb_exit(mantis);
  mantis_dma_exit(mantis);
  mantis_i2c_exit(mantis);
  mantis_pci_exit(mantis);
  kfree(mantis);
 }
 return;

}
