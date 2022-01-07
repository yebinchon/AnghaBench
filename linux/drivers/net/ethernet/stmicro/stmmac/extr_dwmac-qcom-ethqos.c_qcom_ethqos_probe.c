
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stmmac_resources {int mac; } ;
struct resource {int dummy; } ;
struct qcom_ethqos {struct plat_stmmacenet_data* rgmii_clk; int speed; int por; struct plat_stmmacenet_data* rgmii_base; struct platform_device* pdev; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_stmmacenet_data {int has_gmac4; int pmt; int tso_en; int fix_mac_speed; struct qcom_ethqos* bsp_priv; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 int SPEED_1000 ;
 int clk_disable_unprepare (struct plat_stmmacenet_data*) ;
 int clk_prepare_enable (struct plat_stmmacenet_data*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct plat_stmmacenet_data* devm_clk_get (TYPE_1__*,char*) ;
 struct plat_stmmacenet_data* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct qcom_ethqos* devm_kzalloc (TYPE_1__*,int,int ) ;
 int ethqos_fix_mac_speed ;
 int ethqos_set_func_clk_en (struct qcom_ethqos*) ;
 int ethqos_update_rgmii_clk (struct qcom_ethqos*,int ) ;
 int of_device_get_match_data (TYPE_1__*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int rgmii_dump (struct qcom_ethqos*) ;
 int stmmac_dvr_probe (TYPE_1__*,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int qcom_ethqos_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 struct qcom_ethqos *ethqos;
 struct resource *res;
 int ret;

 ret = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (ret)
  return ret;

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat)) {
  dev_err(&pdev->dev, "dt configuration failed\n");
  return PTR_ERR(plat_dat);
 }

 ethqos = devm_kzalloc(&pdev->dev, sizeof(*ethqos), GFP_KERNEL);
 if (!ethqos) {
  ret = -ENOMEM;
  goto err_mem;
 }

 ethqos->pdev = pdev;
 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "rgmii");
 ethqos->rgmii_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ethqos->rgmii_base)) {
  dev_err(&pdev->dev, "Can't get rgmii base\n");
  ret = PTR_ERR(ethqos->rgmii_base);
  goto err_mem;
 }

 ethqos->por = of_device_get_match_data(&pdev->dev);

 ethqos->rgmii_clk = devm_clk_get(&pdev->dev, "rgmii");
 if (IS_ERR(ethqos->rgmii_clk)) {
  ret = PTR_ERR(ethqos->rgmii_clk);
  goto err_mem;
 }

 ret = clk_prepare_enable(ethqos->rgmii_clk);
 if (ret)
  goto err_mem;

 ethqos->speed = SPEED_1000;
 ethqos_update_rgmii_clk(ethqos, SPEED_1000);
 ethqos_set_func_clk_en(ethqos);

 plat_dat->bsp_priv = ethqos;
 plat_dat->fix_mac_speed = ethqos_fix_mac_speed;
 plat_dat->has_gmac4 = 1;
 plat_dat->pmt = 1;
 plat_dat->tso_en = of_property_read_bool(np, "snps,tso");

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret)
  goto err_clk;

 rgmii_dump(ethqos);

 return ret;

err_clk:
 clk_disable_unprepare(ethqos->rgmii_clk);

err_mem:
 stmmac_remove_config_dt(pdev, plat_dat);

 return ret;
}
