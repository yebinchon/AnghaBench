
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {int rgmii_clk; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int clk_disable_unprepare (int ) ;
 struct qcom_ethqos* get_stmmac_bsp_priv (int *) ;
 int stmmac_pltfr_remove (struct platform_device*) ;

__attribute__((used)) static int qcom_ethqos_remove(struct platform_device *pdev)
{
 struct qcom_ethqos *ethqos;
 int ret;

 ethqos = get_stmmac_bsp_priv(&pdev->dev);
 if (!ethqos)
  return -ENODEV;

 ret = stmmac_pltfr_remove(pdev);
 clk_disable_unprepare(ethqos->rgmii_clk);

 return ret;
}
