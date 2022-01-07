
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct am654_hbmc_priv {scalar_t__ mux_ctrl; int hbdev; } ;


 int hyperbus_unregister_device (int *) ;
 int mux_control_deselect (scalar_t__) ;
 struct am654_hbmc_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int am654_hbmc_remove(struct platform_device *pdev)
{
 struct am654_hbmc_priv *priv = platform_get_drvdata(pdev);
 int ret;

 ret = hyperbus_unregister_device(&priv->hbdev);
 if (priv->mux_ctrl)
  mux_control_deselect(priv->mux_ctrl);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return ret;
}
