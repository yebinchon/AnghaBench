
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int QEDE_REMOVE_NORMAL ;
 int __qede_remove (struct pci_dev*,int ) ;

__attribute__((used)) static void qede_shutdown(struct pci_dev *pdev)
{
 __qede_remove(pdev, QEDE_REMOVE_NORMAL);
}
