
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int dev; int * clks; int ethsys; } ;


 int ETHSYS_CLKCFG0 ;
 int ETHSYS_TRGMII_CLK_SEL362_5 ;
 int INTF_MODE ;
 int INTF_MODE_RGMII_1000 ;
 int INTF_MODE_RGMII_10_100 ;
 size_t MTK_CLK_TRGPLL ;
 int RCK_CTRL_RGMII_1000 ;
 int RCK_CTRL_RGMII_10_100 ;
 int SPEED_1000 ;
 int TCK_CTRL_RGMII_1000 ;
 int TCK_CTRL_RGMII_10_100 ;
 int TRGMII_RCK_CTRL ;
 int TRGMII_TCK_CTRL ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,int) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void mtk_gmac0_rgmii_adjust(struct mtk_eth *eth, int speed)
{
 u32 val;
 int ret;

 val = (speed == SPEED_1000) ?
  INTF_MODE_RGMII_1000 : INTF_MODE_RGMII_10_100;
 mtk_w32(eth, val, INTF_MODE);

 regmap_update_bits(eth->ethsys, ETHSYS_CLKCFG0,
      ETHSYS_TRGMII_CLK_SEL362_5,
      ETHSYS_TRGMII_CLK_SEL362_5);

 val = (speed == SPEED_1000) ? 250000000 : 500000000;
 ret = clk_set_rate(eth->clks[MTK_CLK_TRGPLL], val);
 if (ret)
  dev_err(eth->dev, "Failed to set trgmii pll: %d\n", ret);

 val = (speed == SPEED_1000) ?
  RCK_CTRL_RGMII_1000 : RCK_CTRL_RGMII_10_100;
 mtk_w32(eth, val, TRGMII_RCK_CTRL);

 val = (speed == SPEED_1000) ?
  TCK_CTRL_RGMII_1000 : TCK_CTRL_RGMII_10_100;
 mtk_w32(eth, val, TRGMII_TCK_CTRL);
}
