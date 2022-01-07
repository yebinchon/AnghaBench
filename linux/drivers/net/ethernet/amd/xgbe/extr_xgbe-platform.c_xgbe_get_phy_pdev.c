
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct platform_device* platdev; int dev; scalar_t__ use_acpi; } ;
struct platform_device {int dummy; } ;


 int get_device (int ) ;
 struct platform_device* xgbe_of_get_phy_pdev (struct xgbe_prv_data*) ;

__attribute__((used)) static struct platform_device *xgbe_get_phy_pdev(struct xgbe_prv_data *pdata)
{
 struct platform_device *phy_pdev;

 if (pdata->use_acpi) {
  get_device(pdata->dev);
  phy_pdev = pdata->platdev;
 } else {
  phy_pdev = xgbe_of_get_phy_pdev(pdata);
 }

 return phy_pdev;
}
