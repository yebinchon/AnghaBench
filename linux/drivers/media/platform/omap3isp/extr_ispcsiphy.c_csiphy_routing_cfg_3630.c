
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isp_csiphy {TYPE_1__* isp; } ;
typedef enum isp_interface_type { ____Placeholder_isp_interface_type } isp_interface_type ;
struct TYPE_2__ {int syscon_offset; int syscon; } ;






 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_CLOCK ;
 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_STROBE ;
 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_DPHY ;
 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_MASK ;
 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY1_SHIFT ;
 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY2_SHIFT ;
 int OMAP3630_CONTROL_CAMERA_PHY_CTRL_CSI1_RX_SEL_PHY2 ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void csiphy_routing_cfg_3630(struct isp_csiphy *phy,
        enum isp_interface_type iface,
        bool ccp2_strobe)
{
 u32 reg;
 u32 shift, mode;

 regmap_read(phy->isp->syscon, phy->isp->syscon_offset, &reg);

 switch (iface) {
 default:

 case 131:
  reg &= ~OMAP3630_CONTROL_CAMERA_PHY_CTRL_CSI1_RX_SEL_PHY2;
  shift = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY1_SHIFT;
  break;
 case 128:
  shift = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY1_SHIFT;
  mode = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_DPHY;
  break;
 case 130:
  reg |= OMAP3630_CONTROL_CAMERA_PHY_CTRL_CSI1_RX_SEL_PHY2;
  shift = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY2_SHIFT;
  break;
 case 129:
  shift = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY2_SHIFT;
  mode = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_DPHY;
  break;
 }


 if (iface == 131 ||
     iface == 130) {
  if (ccp2_strobe)
   mode = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_STROBE;
  else
   mode = OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_CLOCK;
 }

 reg &= ~(OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_MASK << shift);
 reg |= mode << shift;

 regmap_write(phy->isp->syscon, phy->isp->syscon_offset, reg);
}
