
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct solo_dev {int dummy; } ;
typedef int s32 ;


 int EINVAL ;
 int ERANGE ;
 int SOLO_I2C_TW ;
 int TW286x_BRIGHTNESS_ADDR (int) ;
 int TW286x_CONTRAST_ADDR (int) ;
 int TW286x_HUE_ADDR (int) ;
 int TW286x_SATURATIONU_ADDR (int) ;
 int TW286x_SATURATIONV_ADDR (int) ;
 int TW286x_SHARPNESS (int) ;
 int TW_BRIGHTNESS_ADDR (int) ;
 int TW_CHIP_OFFSET_ADDR (int) ;
 int TW_CONTRAST_ADDR (int) ;
 int TW_HUE_ADDR (int) ;
 int TW_SATURATION_ADDR (int) ;





 int is_tw286x (struct solo_dev*,int) ;
 int solo_i2c_readbyte (struct solo_dev*,int ,int ,int ) ;
 int solo_i2c_writebyte (struct solo_dev*,int ,int ,int ,int) ;
 int tw_writebyte (struct solo_dev*,int,int ,int ,char) ;

int tw28_set_ctrl_val(struct solo_dev *solo_dev, u32 ctrl, u8 ch,
        s32 val)
{
 char sval;
 u8 chip_num;


 chip_num = ch / 4;
 ch %= 4;

 if (val > 255 || val < 0)
  return -ERANGE;

 switch (ctrl) {
 case 128:

  if (is_tw286x(solo_dev, chip_num)) {
   u8 v = solo_i2c_readbyte(solo_dev, SOLO_I2C_TW,
       TW_CHIP_OFFSET_ADDR(chip_num),
       TW286x_SHARPNESS(chip_num));
   v &= 0xf0;
   v |= val;
   solo_i2c_writebyte(solo_dev, SOLO_I2C_TW,
        TW_CHIP_OFFSET_ADDR(chip_num),
        TW286x_SHARPNESS(chip_num), v);
  } else {
   return -EINVAL;
  }
  break;

 case 130:
  if (is_tw286x(solo_dev, chip_num))
   sval = val - 128;
  else
   sval = (char)val;
  tw_writebyte(solo_dev, chip_num, TW286x_HUE_ADDR(ch),
        TW_HUE_ADDR(ch), sval);

  break;

 case 129:

  if (is_tw286x(solo_dev, chip_num)) {
   solo_i2c_writebyte(solo_dev, SOLO_I2C_TW,
        TW_CHIP_OFFSET_ADDR(chip_num),
        TW286x_SATURATIONU_ADDR(ch), val);
  }
  tw_writebyte(solo_dev, chip_num, TW286x_SATURATIONV_ADDR(ch),
        TW_SATURATION_ADDR(ch), val);

  break;

 case 131:
  tw_writebyte(solo_dev, chip_num, TW286x_CONTRAST_ADDR(ch),
        TW_CONTRAST_ADDR(ch), val);
  break;

 case 132:
  if (is_tw286x(solo_dev, chip_num))
   sval = val - 128;
  else
   sval = (char)val;
  tw_writebyte(solo_dev, chip_num, TW286x_BRIGHTNESS_ADDR(ch),
        TW_BRIGHTNESS_ADDR(ch), sval);

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
