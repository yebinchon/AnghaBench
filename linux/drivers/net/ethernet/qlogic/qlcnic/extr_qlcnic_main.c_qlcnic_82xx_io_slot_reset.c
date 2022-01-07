
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ qlcnic_attach_func (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static pci_ers_result_t qlcnic_82xx_io_slot_reset(struct pci_dev *pdev)
{
 pci_ers_result_t res;

 rtnl_lock();
 res = qlcnic_attach_func(pdev) ? PCI_ERS_RESULT_DISCONNECT :
      PCI_ERS_RESULT_RECOVERED;
 rtnl_unlock();

 return res;
}
