
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int ethsys; int dev; } ;
typedef scalar_t__ phy_interface_t ;


 int EOPNOTSUPP ;
 int ETHSYS_CLKCFG0 ;
 int ETHSYS_SYSCFG ;
 int ETHSYS_TRGMII_MT7621_DDR_PLL ;
 int ETHSYS_TRGMII_MT7621_MASK ;
 scalar_t__ PHY_INTERFACE_MODE_TRGMII ;
 int SYSCFG_DRAM_TYPE_DDR2 ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt7621_gmac0_rgmii_adjust(struct mtk_eth *eth,
         phy_interface_t interface)
{
 u32 val;




 regmap_read(eth->ethsys, ETHSYS_SYSCFG, &val);
 if (interface == PHY_INTERFACE_MODE_TRGMII &&
     val & SYSCFG_DRAM_TYPE_DDR2) {
  dev_err(eth->dev,
   "TRGMII mode with DDR2 memory is not supported!\n");
  return -EOPNOTSUPP;
 }

 val = (interface == PHY_INTERFACE_MODE_TRGMII) ?
  ETHSYS_TRGMII_MT7621_DDR_PLL : 0;

 regmap_update_bits(eth->ethsys, ETHSYS_CLKCFG0,
      ETHSYS_TRGMII_MT7621_MASK, val);

 return 0;
}
