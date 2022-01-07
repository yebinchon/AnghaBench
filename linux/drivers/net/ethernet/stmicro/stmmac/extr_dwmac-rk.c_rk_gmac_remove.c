
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_priv_data {int dummy; } ;
struct platform_device {int dev; } ;


 struct rk_priv_data* get_stmmac_bsp_priv (int *) ;
 int rk_gmac_powerdown (struct rk_priv_data*) ;
 int stmmac_dvr_remove (int *) ;

__attribute__((used)) static int rk_gmac_remove(struct platform_device *pdev)
{
 struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(&pdev->dev);
 int ret = stmmac_dvr_remove(&pdev->dev);

 rk_gmac_powerdown(bsp_priv);

 return ret;
}
