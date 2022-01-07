
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int intel_quark_unregister_i2c_clk (int *) ;
 int mfd_remove_devices (int *) ;

__attribute__((used)) static void intel_quark_mfd_remove(struct pci_dev *pdev)
{
 intel_quark_unregister_i2c_clk(&pdev->dev);
 mfd_remove_devices(&pdev->dev);
}
