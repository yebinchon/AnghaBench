
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;


 int HW_CFG ;
 unsigned int HW_CFG_EXT_PHY_EN_ ;
 unsigned int HW_CFG_PHY_CLK_SEL_ ;
 unsigned int HW_CFG_PHY_CLK_SEL_CLK_DIS_ ;
 unsigned int HW_CFG_PHY_CLK_SEL_EXT_PHY_ ;
 unsigned int HW_CFG_SMI_SEL_ ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void smsc911x_phy_enable_external(struct smsc911x_data *pdata)
{
 unsigned int hwcfg = smsc911x_reg_read(pdata, HW_CFG);


 hwcfg &= (~HW_CFG_PHY_CLK_SEL_);
 hwcfg |= HW_CFG_PHY_CLK_SEL_CLK_DIS_;
 smsc911x_reg_write(pdata, HW_CFG, hwcfg);
 udelay(10);


 hwcfg |= HW_CFG_EXT_PHY_EN_;
 smsc911x_reg_write(pdata, HW_CFG, hwcfg);


 hwcfg &= (~HW_CFG_PHY_CLK_SEL_);
 hwcfg |= HW_CFG_PHY_CLK_SEL_EXT_PHY_;
 smsc911x_reg_write(pdata, HW_CFG, hwcfg);
 udelay(10);

 hwcfg |= HW_CFG_SMI_SEL_;
 smsc911x_reg_write(pdata, HW_CFG, hwcfg);
}
