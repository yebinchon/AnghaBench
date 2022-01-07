
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct isp_csiphy {TYPE_1__* isp; int cfg_regs; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int ISPCSI2_PHY_CFG ;
 int ISPCSI2_PHY_CFG_PWR_CMD_MASK ;
 int ISPCSI2_PHY_CFG_PWR_STATUS_MASK ;
 int dev_err (int ,char*) ;
 int isp_reg_clr_set (TYPE_1__*,int ,int ,int ,int) ;
 int isp_reg_readl (TYPE_1__*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int csiphy_set_power(struct isp_csiphy *phy, u32 power)
{
 u32 reg;
 u8 retry_count;

 isp_reg_clr_set(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG,
   ISPCSI2_PHY_CFG_PWR_CMD_MASK, power);

 retry_count = 0;
 do {
  udelay(50);
  reg = isp_reg_readl(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG) &
        ISPCSI2_PHY_CFG_PWR_STATUS_MASK;

  if (reg != power >> 2)
   retry_count++;

 } while ((reg != power >> 2) && (retry_count < 100));

 if (retry_count == 100) {
  dev_err(phy->isp->dev, "CSI2 CIO set power failed!\n");
  return -EBUSY;
 }

 return 0;
}
