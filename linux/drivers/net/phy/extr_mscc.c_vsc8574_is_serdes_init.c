
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int DW8051_CLK_EN ;
 int EN_PATCH_RAM_TRAP_ADDR (int) ;
 int MICRO_CLK_EN ;
 int MICRO_NSOFT_RESET ;
 int MSCC_DW8051_CNTL_STATUS ;
 int MSCC_DW8051_VLD_MASK ;
 int MSCC_EXT_PAGE_ACCESS ;
 int MSCC_INT_MEM_CNTL ;
 int MSCC_PATCH_RAM_ADDR (int) ;
 int MSCC_PHY_PAGE_EXTENDED_GPIO ;
 int MSCC_PHY_PAGE_STANDARD ;
 int MSCC_TRAP_ROM_ADDR (int) ;
 int RUN_FROM_INT_ROM ;
 int phy_base_read (struct phy_device*,int ) ;
 int phy_base_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static bool vsc8574_is_serdes_init(struct phy_device *phydev)
{
 u16 reg;
 bool ret;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS,
         MSCC_PHY_PAGE_EXTENDED_GPIO);

 reg = phy_base_read(phydev, MSCC_TRAP_ROM_ADDR(1));
 if (reg != 0x3eb7) {
  ret = 0;
  goto out;
 }

 reg = phy_base_read(phydev, MSCC_PATCH_RAM_ADDR(1));
 if (reg != 0x4012) {
  ret = 0;
  goto out;
 }

 reg = phy_base_read(phydev, MSCC_INT_MEM_CNTL);
 if (reg != EN_PATCH_RAM_TRAP_ADDR(1)) {
  ret = 0;
  goto out;
 }

 reg = phy_base_read(phydev, MSCC_DW8051_CNTL_STATUS);
 if ((MICRO_NSOFT_RESET | RUN_FROM_INT_ROM | DW8051_CLK_EN |
      MICRO_CLK_EN) != (reg & MSCC_DW8051_VLD_MASK)) {
  ret = 0;
  goto out;
 }

 ret = 1;
out:
 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

 return ret;
}
