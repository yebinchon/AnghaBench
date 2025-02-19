
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sti_dwmac {scalar_t__ ctrl_reg; scalar_t__ interface; int regmap; int clk; int ext_phyclk; } ;


 scalar_t__ DWMAC_125MHZ ;
 scalar_t__ DWMAC_25MHZ ;
 scalar_t__ DWMAC_2_5MHZ ;
 scalar_t__ DWMAC_50MHZ ;
 scalar_t__ IS_PHY_IF_MODE_RGMII (scalar_t__) ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 scalar_t__ PHY_INTERFACE_MODE_RMII ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ STID127_ETH_SEL_INTERNAL_NOTEXT_PHYCLK ;
 scalar_t__ STID127_ETH_SEL_INTERNAL_NOTEXT_TXCLK ;
 int STID127_RETIME_SRC_MASK ;
 int clk_set_rate (int ,scalar_t__) ;
 int regmap_update_bits (int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void stid127_fix_retime_src(void *priv, u32 spd)
{
 struct sti_dwmac *dwmac = priv;
 u32 reg = dwmac->ctrl_reg;
 u32 freq = 0;
 u32 val = 0;

 if (dwmac->interface == PHY_INTERFACE_MODE_MII) {
  val = STID127_ETH_SEL_INTERNAL_NOTEXT_TXCLK;
 } else if (dwmac->interface == PHY_INTERFACE_MODE_RMII) {
  if (!dwmac->ext_phyclk) {
   val = STID127_ETH_SEL_INTERNAL_NOTEXT_PHYCLK;
   freq = DWMAC_50MHZ;
  }
 } else if (IS_PHY_IF_MODE_RGMII(dwmac->interface)) {
  val = STID127_ETH_SEL_INTERNAL_NOTEXT_TXCLK;
  if (spd == SPEED_1000)
   freq = DWMAC_125MHZ;
  else if (spd == SPEED_100)
   freq = DWMAC_25MHZ;
  else if (spd == SPEED_10)
   freq = DWMAC_2_5MHZ;
 }

 if (freq)
  clk_set_rate(dwmac->clk, freq);

 regmap_update_bits(dwmac->regmap, reg, STID127_RETIME_SRC_MASK, val);
}
