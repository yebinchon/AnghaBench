
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int phy_platdev; } ;
struct platform_device {int dummy; } ;


 int platform_device_put (int ) ;
 struct xgbe_prv_data* platform_get_drvdata (struct platform_device*) ;
 int xgbe_deconfig_netdev (struct xgbe_prv_data*) ;
 int xgbe_free_pdata (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_platform_remove(struct platform_device *pdev)
{
 struct xgbe_prv_data *pdata = platform_get_drvdata(pdev);

 xgbe_deconfig_netdev(pdata);

 platform_device_put(pdata->phy_platdev);

 xgbe_free_pdata(pdata);

 return 0;
}
