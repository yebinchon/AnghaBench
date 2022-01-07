
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BANK_BIST ;
 int FR_PLL_CONTROL ;
 int FR_PLL_DIV0 ;
 int FR_PLL_DIV1 ;
 int meson_gxl_write_reg (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int meson_gxl_config_init(struct phy_device *phydev)
{
 int ret;


 ret = meson_gxl_write_reg(phydev, BANK_BIST, FR_PLL_CONTROL, 0x5);
 if (ret)
  return ret;


 ret = meson_gxl_write_reg(phydev, BANK_BIST, FR_PLL_DIV1, 0x029a);
 if (ret)
  return ret;


 ret = meson_gxl_write_reg(phydev, BANK_BIST, FR_PLL_DIV0, 0xaaaa);
 if (ret)
  return ret;

 return 0;
}
