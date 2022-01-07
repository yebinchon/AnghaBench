
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {scalar_t__ integrated_phy; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int gmac_clk_enable (struct rk_priv_data*,int) ;
 int phy_power_on (struct rk_priv_data*,int) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int rk_gmac_integrated_phy_powerdown (struct rk_priv_data*) ;

__attribute__((used)) static void rk_gmac_powerdown(struct rk_priv_data *gmac)
{
 struct device *dev = &gmac->pdev->dev;

 if (gmac->integrated_phy)
  rk_gmac_integrated_phy_powerdown(gmac);

 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);

 phy_power_on(gmac, 0);
 gmac_clk_enable(gmac, 0);
}
