
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {int dummy; } ;
typedef enum AV_MODE { ____Placeholder_AV_MODE } AV_MODE ;


 int CH_PWR_CTRL2 ;
 int I2S_BLK_DEVICE_ADDRESS ;
 int POLARIS_AVMODE_ENXTERNAL_AV ;
 int cx231xx_read_i2c_data (struct cx231xx*,int ,int ,int,int*,int) ;
 int cx231xx_write_i2c_data (struct cx231xx*,int ,int ,int,int,int) ;

int cx231xx_i2s_blk_update_power_control(struct cx231xx *dev,
     enum AV_MODE avmode)
{
 int status = 0;
 u32 value = 0;

 if (avmode != POLARIS_AVMODE_ENXTERNAL_AV) {
  status = cx231xx_read_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
       CH_PWR_CTRL2, 1, &value, 1);
  value |= 0xfe;
  status = cx231xx_write_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
      CH_PWR_CTRL2, 1, value, 1);
 } else {
  status = cx231xx_write_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
      CH_PWR_CTRL2, 1, 0x00, 1);
 }

 return status;
}
