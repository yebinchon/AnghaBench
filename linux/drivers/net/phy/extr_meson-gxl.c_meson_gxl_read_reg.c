
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int FIELD_PREP (int ,unsigned int) ;
 int TSTCNTL ;
 int TSTCNTL_READ ;
 int TSTCNTL_READ_ADDRESS ;
 int TSTCNTL_REG_BANK_SEL ;
 int TSTCNTL_TEST_MODE ;
 int TSTREAD1 ;
 int meson_gxl_close_banks (struct phy_device*) ;
 int meson_gxl_open_banks (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int meson_gxl_read_reg(struct phy_device *phydev,
         unsigned int bank, unsigned int reg)
{
 int ret;

 ret = meson_gxl_open_banks(phydev);
 if (ret)
  goto out;

 ret = phy_write(phydev, TSTCNTL, TSTCNTL_READ |
   FIELD_PREP(TSTCNTL_REG_BANK_SEL, bank) |
   TSTCNTL_TEST_MODE |
   FIELD_PREP(TSTCNTL_READ_ADDRESS, reg));
 if (ret)
  goto out;

 ret = phy_read(phydev, TSTREAD1);
out:

 meson_gxl_close_banks(phydev);
 return ret;
}
