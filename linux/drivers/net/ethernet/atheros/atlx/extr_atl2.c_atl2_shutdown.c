
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PMSG_SUSPEND ;
 int atl2_suspend (struct pci_dev*,int ) ;

__attribute__((used)) static void atl2_shutdown(struct pci_dev *pdev)
{
 atl2_suspend(pdev, PMSG_SUSPEND);
}
