
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_hardware_ops {int (* io_resume ) (struct pci_dev*) ;} ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {struct qlcnic_hardware_ops* hw_ops; } ;


 int dev_err (int *,char*) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static void qlcnic_io_resume(struct pci_dev *pdev)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);
 struct qlcnic_hardware_ops *hw_ops = adapter->ahw->hw_ops;

 if (hw_ops->io_resume)
  hw_ops->io_resume(pdev);
 else
  dev_err(&pdev->dev, "AER resume handler not registered.\n");
}
