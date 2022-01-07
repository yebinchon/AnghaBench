
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {int dummy; } ;


 int SOLO_I2C_TW ;
 int TW_CHIP_OFFSET_ADDR (int) ;
 scalar_t__ is_tw286x (struct solo_dev*,int) ;
 int solo_i2c_readbyte (struct solo_dev*,int ,int ,int ) ;

__attribute__((used)) static u8 tw_readbyte(struct solo_dev *solo_dev, int chip_id, u8 tw6x_off,
        u8 tw_off)
{
 if (is_tw286x(solo_dev, chip_id))
  return solo_i2c_readbyte(solo_dev, SOLO_I2C_TW,
      TW_CHIP_OFFSET_ADDR(chip_id),
      tw6x_off);
 else
  return solo_i2c_readbyte(solo_dev, SOLO_I2C_TW,
      TW_CHIP_OFFSET_ADDR(chip_id),
      tw_off);
}
