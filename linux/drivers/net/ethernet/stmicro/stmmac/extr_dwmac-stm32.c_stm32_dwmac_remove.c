
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct stm32_dwmac {scalar_t__ irq_pwr_wakeup; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct stm32_dwmac* bsp_priv; } ;


 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int stm32_dwmac_clk_disable (struct stm32_dwmac*) ;
 int stmmac_dvr_remove (int *) ;

__attribute__((used)) static int stm32_dwmac_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct stmmac_priv *priv = netdev_priv(ndev);
 int ret = stmmac_dvr_remove(&pdev->dev);
 struct stm32_dwmac *dwmac = priv->plat->bsp_priv;

 stm32_dwmac_clk_disable(priv->plat->bsp_priv);

 if (dwmac->irq_pwr_wakeup >= 0) {
  dev_pm_clear_wake_irq(&pdev->dev);
  device_init_wakeup(&pdev->dev, 0);
 }

 return ret;
}
