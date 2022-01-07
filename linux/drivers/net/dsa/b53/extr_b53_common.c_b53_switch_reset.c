
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {scalar_t__ chip_id; int dev; } ;


 int B53_CTRL_PAGE ;
 int B53_SOFTRESET ;
 int B53_SWITCH_MODE ;
 scalar_t__ BCM583XX_DEVICE_ID ;
 scalar_t__ BCM58XX_DEVICE_ID ;
 int EINVAL ;
 int EN_CH_RST ;
 int EN_SW_RST ;
 int ETIMEDOUT ;
 int FAST_AGE_STATIC ;
 int SM_SW_FWD_EN ;
 int SM_SW_FWD_MODE ;
 int SW_RST ;
 int b53_enable_mib (struct b53_device*) ;
 int b53_flush_arl (struct b53_device*,int ) ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_switch_reset_gpio (struct b53_device*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int dev_err (int ,char*) ;
 scalar_t__ is539x (struct b53_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int b53_switch_reset(struct b53_device *dev)
{
 unsigned int timeout = 1000;
 u8 mgmt, reg;

 b53_switch_reset_gpio(dev);

 if (is539x(dev)) {
  b53_write8(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x83);
  b53_write8(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x00);
 }






 if (dev->chip_id == BCM58XX_DEVICE_ID ||
     dev->chip_id == BCM583XX_DEVICE_ID) {
  b53_read8(dev, B53_CTRL_PAGE, B53_SOFTRESET, &reg);
  reg |= SW_RST | EN_SW_RST | EN_CH_RST;
  b53_write8(dev, B53_CTRL_PAGE, B53_SOFTRESET, reg);

  do {
   b53_read8(dev, B53_CTRL_PAGE, B53_SOFTRESET, &reg);
   if (!(reg & SW_RST))
    break;

   usleep_range(1000, 2000);
  } while (timeout-- > 0);

  if (timeout == 0)
   return -ETIMEDOUT;
 }

 b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

 if (!(mgmt & SM_SW_FWD_EN)) {
  mgmt &= ~SM_SW_FWD_MODE;
  mgmt |= SM_SW_FWD_EN;

  b53_write8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);
  b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

  if (!(mgmt & SM_SW_FWD_EN)) {
   dev_err(dev->dev, "Failed to enable switch!\n");
   return -EINVAL;
  }
 }

 b53_enable_mib(dev);

 return b53_flush_arl(dev, FAST_AGE_STATIC);
}
