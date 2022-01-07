
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;
struct TYPE_2__ {int dev; } ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int cleanup_aer_uncorrect_error_status (TYPE_1__*) ;
 int dev_err (int *,char*) ;
 scalar_t__ pci_channel_io_normal ;
 struct octeon_device* pci_get_drvdata (struct pci_dev*) ;
 int stop_pci_io (struct octeon_device*) ;

__attribute__((used)) static pci_ers_result_t liquidio_pcie_error_detected(struct pci_dev *pdev,
           pci_channel_state_t state)
{
 struct octeon_device *oct = pci_get_drvdata(pdev);


 if (state == pci_channel_io_normal) {
  dev_err(&oct->pci_dev->dev, "Non-correctable non-fatal error reported:\n");
  cleanup_aer_uncorrect_error_status(oct->pci_dev);
  return PCI_ERS_RESULT_CAN_RECOVER;
 }


 dev_err(&oct->pci_dev->dev, "Non-correctable FATAL reported by PCI AER driver\n");
 stop_pci_io(oct);




 return PCI_ERS_RESULT_DISCONNECT;
}
