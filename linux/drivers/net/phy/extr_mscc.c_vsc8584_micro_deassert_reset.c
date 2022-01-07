
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int DW8051_CLK_EN ;
 int MICRO_CLK_EN ;
 int MICRO_NSOFT_RESET ;
 int MICRO_PATCH_EN ;
 int MSCC_DW8051_CNTL_STATUS ;
 int MSCC_EXT_PAGE_ACCESS ;
 int MSCC_INT_MEM_CNTL ;
 int MSCC_PHY_PAGE_EXTENDED_GPIO ;
 int MSCC_PHY_PAGE_STANDARD ;
 int READ_RAM ;
 int RUN_FROM_INT_ROM ;
 int phy_base_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc8584_micro_deassert_reset(struct phy_device *phydev,
     bool patch_en)
{
 u32 enable, release;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS,
         MSCC_PHY_PAGE_EXTENDED_GPIO);

 enable = RUN_FROM_INT_ROM | MICRO_CLK_EN | DW8051_CLK_EN;
 release = MICRO_NSOFT_RESET | RUN_FROM_INT_ROM | DW8051_CLK_EN |
  MICRO_CLK_EN;

 if (patch_en) {
  enable |= MICRO_PATCH_EN;
  release |= MICRO_PATCH_EN;


  phy_base_write(phydev, MSCC_INT_MEM_CNTL, READ_RAM);
 }




 phy_base_write(phydev, MSCC_DW8051_CNTL_STATUS, enable);

 phy_base_write(phydev, MSCC_DW8051_CNTL_STATUS, release);

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

 return 0;
}
