
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int i2c_speed; } ;





 int EM28XX_I2C_XFER_TIMEOUT ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static int em28xx_i2c_timeout(struct em28xx *dev)
{
 int time = EM28XX_I2C_XFER_TIMEOUT;

 switch (dev->i2c_speed & 0x03) {
 case 129:
  time += 4;
  break;
 case 130:
 case 128:
  time += 1;
  break;
 default:
  break;
 }

 return msecs_to_jiffies(time);
}
