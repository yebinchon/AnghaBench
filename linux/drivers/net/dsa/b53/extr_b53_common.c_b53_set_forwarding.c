
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_IP_MULTICAST_CTRL ;
 int B53_MC_FWD_EN ;
 int B53_MII_DUMB_FWDG_EN ;
 int B53_SWITCH_CTRL ;
 int B53_SWITCH_MODE ;
 int B53_UC_FWD_EN ;
 int SM_SW_FWD_EN ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;

__attribute__((used)) static void b53_set_forwarding(struct b53_device *dev, int enable)
{
 u8 mgmt;

 b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

 if (enable)
  mgmt |= SM_SW_FWD_EN;
 else
  mgmt &= ~SM_SW_FWD_EN;

 b53_write8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);



 b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_CTRL, &mgmt);
 mgmt |= B53_MII_DUMB_FWDG_EN;
 b53_write8(dev, B53_CTRL_PAGE, B53_SWITCH_CTRL, mgmt);




 b53_read8(dev, B53_CTRL_PAGE, B53_IP_MULTICAST_CTRL, &mgmt);
 mgmt |= B53_UC_FWD_EN | B53_MC_FWD_EN;
 b53_write8(dev, B53_CTRL_PAGE, B53_IP_MULTICAST_CTRL, mgmt);
}
