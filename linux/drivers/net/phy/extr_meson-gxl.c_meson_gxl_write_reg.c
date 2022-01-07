
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct phy_device {int dummy; } ;


 int FIELD_PREP (int ,unsigned int) ;
 int TSTCNTL ;
 int TSTCNTL_REG_BANK_SEL ;
 int TSTCNTL_TEST_MODE ;
 int TSTCNTL_WRITE ;
 int TSTCNTL_WRITE_ADDRESS ;
 int TSTWRITE ;
 int meson_gxl_close_banks (struct phy_device*) ;
 int meson_gxl_open_banks (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int meson_gxl_write_reg(struct phy_device *phydev,
          unsigned int bank, unsigned int reg,
          uint16_t value)
{
 int ret;

 ret = meson_gxl_open_banks(phydev);
 if (ret)
  goto out;

 ret = phy_write(phydev, TSTWRITE, value);
 if (ret)
  goto out;

 ret = phy_write(phydev, TSTCNTL, TSTCNTL_WRITE |
   FIELD_PREP(TSTCNTL_REG_BANK_SEL, bank) |
   TSTCNTL_TEST_MODE |
   FIELD_PREP(TSTCNTL_WRITE_ADDRESS, reg));

out:

 meson_gxl_close_banks(phydev);
 return ret;
}
