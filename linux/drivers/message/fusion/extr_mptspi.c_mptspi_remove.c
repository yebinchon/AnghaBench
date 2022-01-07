
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {int sh; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int mptscsih_remove (struct pci_dev*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void mptspi_remove(struct pci_dev *pdev)
{
 MPT_ADAPTER *ioc = pci_get_drvdata(pdev);

 scsi_remove_host(ioc->sh);
 mptscsih_remove(pdev);
}
