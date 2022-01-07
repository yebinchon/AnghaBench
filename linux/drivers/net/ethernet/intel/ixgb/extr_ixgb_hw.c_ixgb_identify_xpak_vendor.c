
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef char u16 ;
struct ixgb_hw {int dummy; } ;
typedef int ixgb_xpak_vendor ;


 int ENTER () ;
 int IXGB_PHY_ADDRESS ;
 int MDIO_MMD_PMAPMD ;
 scalar_t__ MDIO_PMA_PMD_XPAK_VENDOR_NAME ;
 char ixgb_read_phy_reg (struct ixgb_hw*,scalar_t__,int ,int ) ;
 int ixgb_xpak_vendor_infineon ;
 int ixgb_xpak_vendor_intel ;

__attribute__((used)) static ixgb_xpak_vendor
ixgb_identify_xpak_vendor(struct ixgb_hw *hw)
{
 u32 i;
 u16 vendor_name[5];
 ixgb_xpak_vendor xpak_vendor;

 ENTER();




 for (i = 0; i < 5; i++) {
  vendor_name[i] = ixgb_read_phy_reg(hw,
         MDIO_PMA_PMD_XPAK_VENDOR_NAME
         + i, IXGB_PHY_ADDRESS,
         MDIO_MMD_PMAPMD);
 }


 if (vendor_name[0] == 'I' &&
     vendor_name[1] == 'N' &&
     vendor_name[2] == 'T' &&
     vendor_name[3] == 'E' && vendor_name[4] == 'L') {
  xpak_vendor = ixgb_xpak_vendor_intel;
 } else {
  xpak_vendor = ixgb_xpak_vendor_infineon;
 }

 return xpak_vendor;
}
