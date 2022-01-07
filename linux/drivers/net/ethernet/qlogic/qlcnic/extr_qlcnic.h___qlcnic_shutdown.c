
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct pci_dev*) ;} ;


 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static inline int __qlcnic_shutdown(struct pci_dev *pdev)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);

 return adapter->nic_ops->shutdown(pdev);
}
