
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {scalar_t__ lux_thres_lo_onchip; int lux_thres_hi_onchip; int client; scalar_t__ prox_data; scalar_t__ lux_data_raw; int regs; } ;


 int ARRAY_SIZE (int ) ;
 int BH1770_ALS_CONTROL ;
 int BH1770_LUX_RANGE ;
 int BH1770_RESET_TIME ;
 int BH1770_STANDALONE ;
 int BH1770_STARTUP_DELAY ;
 int BH1770_SWRESET ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bh1770_chip_on(struct bh1770_chip *chip)
{
 int ret = regulator_bulk_enable(ARRAY_SIZE(chip->regs),
     chip->regs);
 if (ret < 0)
  return ret;

 usleep_range(BH1770_STARTUP_DELAY, BH1770_STARTUP_DELAY * 2);


 i2c_smbus_write_byte_data(chip->client, BH1770_ALS_CONTROL,
    BH1770_SWRESET);
 usleep_range(BH1770_RESET_TIME, BH1770_RESET_TIME * 2);






 chip->lux_data_raw = 0;
 chip->prox_data = 0;
 ret = i2c_smbus_write_byte_data(chip->client,
     BH1770_ALS_CONTROL, BH1770_STANDALONE);


 chip->lux_thres_hi_onchip = BH1770_LUX_RANGE;
 chip->lux_thres_lo_onchip = 0;

 return ret;
}
