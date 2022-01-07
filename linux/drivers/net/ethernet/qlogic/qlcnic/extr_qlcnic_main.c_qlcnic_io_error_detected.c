
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_hardware_ops {int (* io_error_detected ) (struct pci_dev*,int ) ;} ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;
struct TYPE_2__ {struct qlcnic_hardware_ops* hw_ops; } ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int dev_err (int *,char*) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct pci_dev*,int ) ;

__attribute__((used)) static pci_ers_result_t qlcnic_io_error_detected(struct pci_dev *pdev,
       pci_channel_state_t state)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);
 struct qlcnic_hardware_ops *hw_ops = adapter->ahw->hw_ops;

 if (hw_ops->io_error_detected) {
  return hw_ops->io_error_detected(pdev, state);
 } else {
  dev_err(&pdev->dev, "AER error_detected handler not registered.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
}
