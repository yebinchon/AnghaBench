
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pci_dev {int dummy; } ;
struct macb_platform_data {int hclk; int pclk; } ;


 int clk_unregister (int ) ;
 struct macb_platform_data* dev_get_platdata (int *) ;
 struct platform_device* pci_get_drvdata (struct pci_dev*) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void macb_remove(struct pci_dev *pdev)
{
 struct platform_device *plat_dev = pci_get_drvdata(pdev);
 struct macb_platform_data *plat_data = dev_get_platdata(&plat_dev->dev);

 platform_device_unregister(plat_dev);
 clk_unregister(plat_data->pclk);
 clk_unregister(plat_data->hclk);
}
