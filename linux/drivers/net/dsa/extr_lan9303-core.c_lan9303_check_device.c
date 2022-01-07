
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan9303 {int dev; int reset_gpio; int regmap; } ;


 int ENODEV ;
 int LAN9303_CHIP_ID ;
 int LAN9303_CHIP_REV ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int lan9303_detect_phy_setup (struct lan9303*) ;
 int lan9303_disable_processing (struct lan9303*) ;
 int lan9303_read (int ,int ,int*) ;

__attribute__((used)) static int lan9303_check_device(struct lan9303 *chip)
{
 int ret;
 u32 reg;

 ret = lan9303_read(chip->regmap, LAN9303_CHIP_REV, &reg);
 if (ret) {
  dev_err(chip->dev, "failed to read chip revision register: %d\n",
   ret);
  if (!chip->reset_gpio) {
   dev_dbg(chip->dev,
    "hint: maybe failed due to missing reset GPIO\n");
  }
  return ret;
 }

 if ((reg >> 16) != LAN9303_CHIP_ID) {
  dev_err(chip->dev, "expecting LAN9303 chip, but found: %X\n",
   reg >> 16);
  return -ENODEV;
 }
 ret = lan9303_disable_processing(chip);
 if (ret)
  dev_warn(chip->dev, "failed to disable switching %d\n", ret);

 dev_info(chip->dev, "Found LAN9303 rev. %u\n", reg & 0xffff);

 ret = lan9303_detect_phy_setup(chip);
 if (ret) {
  dev_err(chip->dev,
   "failed to discover phy bootstrap setup: %d\n", ret);
  return ret;
 }

 return 0;
}
