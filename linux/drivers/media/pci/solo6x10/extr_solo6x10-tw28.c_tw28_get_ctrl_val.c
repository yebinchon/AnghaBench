
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct solo_dev {int dummy; } ;
typedef int s32 ;


 int EINVAL ;
 int SOLO_I2C_TW ;
 int TW286x_BRIGHTNESS_ADDR (int) ;
 int TW286x_CONTRAST_ADDR (int) ;
 int TW286x_HUE_ADDR (int) ;
 int TW286x_SATURATIONU_ADDR (int) ;
 int TW286x_SHARPNESS (int) ;
 int TW_BRIGHTNESS_ADDR (int) ;
 int TW_CHIP_OFFSET_ADDR (int) ;
 int TW_CONTRAST_ADDR (int) ;
 int TW_HUE_ADDR (int) ;
 int TW_SATURATION_ADDR (int) ;





 int is_tw286x (struct solo_dev*,int) ;
 int solo_i2c_readbyte (struct solo_dev*,int ,int ,int ) ;
 void* tw_readbyte (struct solo_dev*,int,int ,int ) ;

int tw28_get_ctrl_val(struct solo_dev *solo_dev, u32 ctrl, u8 ch,
        s32 *val)
{
 u8 rval, chip_num;


 chip_num = ch / 4;
 ch %= 4;

 switch (ctrl) {
 case 128:

  if (is_tw286x(solo_dev, chip_num)) {
   rval = solo_i2c_readbyte(solo_dev, SOLO_I2C_TW,
       TW_CHIP_OFFSET_ADDR(chip_num),
       TW286x_SHARPNESS(chip_num));
   *val = rval & 0x0f;
  } else
   *val = 0;
  break;
 case 130:
  rval = tw_readbyte(solo_dev, chip_num, TW286x_HUE_ADDR(ch),
       TW_HUE_ADDR(ch));
  if (is_tw286x(solo_dev, chip_num))
   *val = (s32)((char)rval) + 128;
  else
   *val = rval;
  break;
 case 129:
  *val = tw_readbyte(solo_dev, chip_num,
       TW286x_SATURATIONU_ADDR(ch),
       TW_SATURATION_ADDR(ch));
  break;
 case 131:
  *val = tw_readbyte(solo_dev, chip_num,
       TW286x_CONTRAST_ADDR(ch),
       TW_CONTRAST_ADDR(ch));
  break;
 case 132:
  rval = tw_readbyte(solo_dev, chip_num,
       TW286x_BRIGHTNESS_ADDR(ch),
       TW_BRIGHTNESS_ADDR(ch));
  if (is_tw286x(solo_dev, chip_num))
   *val = (s32)((char)rval) + 128;
  else
   *val = rval;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
