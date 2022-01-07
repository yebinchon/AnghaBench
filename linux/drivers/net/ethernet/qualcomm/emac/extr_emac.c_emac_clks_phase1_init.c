
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct emac_adapter {int * clk; } ;


 size_t EMAC_CLK_AXI ;
 size_t EMAC_CLK_CFG_AHB ;
 size_t EMAC_CLK_HIGH_SPEED ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int emac_clks_get (struct platform_device*,struct emac_adapter*) ;
 scalar_t__ has_acpi_companion (int *) ;

__attribute__((used)) static int emac_clks_phase1_init(struct platform_device *pdev,
     struct emac_adapter *adpt)
{
 int ret;




 if (has_acpi_companion(&pdev->dev))
  return 0;

 ret = emac_clks_get(pdev, adpt);
 if (ret)
  return ret;

 ret = clk_prepare_enable(adpt->clk[EMAC_CLK_AXI]);
 if (ret)
  return ret;

 ret = clk_prepare_enable(adpt->clk[EMAC_CLK_CFG_AHB]);
 if (ret)
  return ret;

 ret = clk_set_rate(adpt->clk[EMAC_CLK_HIGH_SPEED], 19200000);
 if (ret)
  return ret;

 return clk_prepare_enable(adpt->clk[EMAC_CLK_HIGH_SPEED]);
}
