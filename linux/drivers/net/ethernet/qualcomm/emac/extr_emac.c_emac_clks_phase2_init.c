
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct emac_adapter {int * clk; } ;


 size_t EMAC_CLK_HIGH_SPEED ;
 size_t EMAC_CLK_MDIO ;
 size_t EMAC_CLK_RX ;
 size_t EMAC_CLK_SYS ;
 size_t EMAC_CLK_TX ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 scalar_t__ has_acpi_companion (int *) ;

__attribute__((used)) static int emac_clks_phase2_init(struct platform_device *pdev,
     struct emac_adapter *adpt)
{
 int ret;

 if (has_acpi_companion(&pdev->dev))
  return 0;

 ret = clk_set_rate(adpt->clk[EMAC_CLK_TX], 125000000);
 if (ret)
  return ret;

 ret = clk_prepare_enable(adpt->clk[EMAC_CLK_TX]);
 if (ret)
  return ret;

 ret = clk_set_rate(adpt->clk[EMAC_CLK_HIGH_SPEED], 125000000);
 if (ret)
  return ret;

 ret = clk_set_rate(adpt->clk[EMAC_CLK_MDIO], 25000000);
 if (ret)
  return ret;

 ret = clk_prepare_enable(adpt->clk[EMAC_CLK_MDIO]);
 if (ret)
  return ret;

 ret = clk_prepare_enable(adpt->clk[EMAC_CLK_RX]);
 if (ret)
  return ret;

 return clk_prepare_enable(adpt->clk[EMAC_CLK_SYS]);
}
