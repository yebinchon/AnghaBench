
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct isp_csiphy {TYPE_1__* isp; } ;
struct TYPE_2__ {int syscon_offset; int syscon; } ;


 scalar_t__ ISP_INTERFACE_CCP2B_PHY1 ;
 scalar_t__ OMAP343X_CONTROL_CSIRXFE_PWRDNZ ;
 scalar_t__ OMAP343X_CONTROL_CSIRXFE_RESET ;
 scalar_t__ OMAP343X_CONTROL_CSIRXFE_SELFORM ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static void csiphy_routing_cfg_3430(struct isp_csiphy *phy, u32 iface, bool on,
        bool ccp2_strobe)
{
 u32 csirxfe = OMAP343X_CONTROL_CSIRXFE_PWRDNZ
  | OMAP343X_CONTROL_CSIRXFE_RESET;


 if (iface != ISP_INTERFACE_CCP2B_PHY1)
  return;

 if (!on) {
  regmap_write(phy->isp->syscon, phy->isp->syscon_offset, 0);
  return;
 }

 if (ccp2_strobe)
  csirxfe |= OMAP343X_CONTROL_CSIRXFE_SELFORM;

 regmap_write(phy->isp->syscon, phy->isp->syscon_offset, csirxfe);
}
