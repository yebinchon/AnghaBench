
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int __e1000e_disable_aspm (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void e1000e_disable_aspm(struct pci_dev *pdev, u16 state)
{
 __e1000e_disable_aspm(pdev, state, 0);
}
