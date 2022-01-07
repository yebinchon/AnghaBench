
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct aq_nic_s {int dummy; } ;
typedef int pm_message_t ;


 int aq_nic_change_pm_state (struct aq_nic_s*,int *) ;
 struct aq_nic_s* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int aq_pci_suspend(struct pci_dev *pdev, pm_message_t pm_msg)
{
 struct aq_nic_s *self = pci_get_drvdata(pdev);

 return aq_nic_change_pm_state(self, &pm_msg);
}
