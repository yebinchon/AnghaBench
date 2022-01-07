
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ SYSTEM_POWER_OFF ;
 int __e100_power_off (struct pci_dev*,int) ;
 int __e100_shutdown (struct pci_dev*,int*) ;
 scalar_t__ system_state ;

__attribute__((used)) static void e100_shutdown(struct pci_dev *pdev)
{
 bool wake;
 __e100_shutdown(pdev, &wake);
 if (system_state == SYSTEM_POWER_OFF)
  __e100_power_off(pdev, wake);
}
