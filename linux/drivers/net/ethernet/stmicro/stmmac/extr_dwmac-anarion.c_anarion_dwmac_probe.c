
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_resources {int mac; } ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {struct plat_stmmacenet_data* bsp_priv; int exit; int (* init ) (struct platform_device*,struct plat_stmmacenet_data*) ;} ;
struct anarion_gmac {struct anarion_gmac* bsp_priv; int exit; int (* init ) (struct platform_device*,struct plat_stmmacenet_data*) ;} ;


 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 struct plat_stmmacenet_data* anarion_config_dt (struct platform_device*) ;
 int anarion_gmac_exit ;
 int anarion_gmac_init (struct platform_device*,struct plat_stmmacenet_data*) ;
 int stmmac_dvr_probe (int *,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int anarion_dwmac_probe(struct platform_device *pdev)
{
 int ret;
 struct anarion_gmac *gmac;
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;

 ret = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (ret)
  return ret;

 gmac = anarion_config_dt(pdev);
 if (IS_ERR(gmac))
  return PTR_ERR(gmac);

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat))
  return PTR_ERR(plat_dat);

 plat_dat->init = anarion_gmac_init;
 plat_dat->exit = anarion_gmac_exit;
 anarion_gmac_init(pdev, gmac);
 plat_dat->bsp_priv = gmac;

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret) {
  stmmac_remove_config_dt(pdev, plat_dat);
  return ret;
 }

 return 0;
}
