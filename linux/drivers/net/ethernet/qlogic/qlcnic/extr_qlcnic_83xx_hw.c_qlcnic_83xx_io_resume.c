
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;
struct pci_dev {int dummy; } ;


 int __QLCNIC_AER ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int qlcnic_83xx_aer_start_poll_work (struct qlcnic_adapter*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_83xx_io_resume(struct pci_dev *pdev)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);

 if (test_and_clear_bit(__QLCNIC_AER, &adapter->state))
  qlcnic_83xx_aer_start_poll_work(adapter);
}
