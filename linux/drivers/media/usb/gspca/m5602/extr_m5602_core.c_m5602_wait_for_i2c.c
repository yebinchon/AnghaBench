
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int I2C_BUSY ;
 int M5602_XB_I2C_STATUS ;
 int m5602_read_bridge (struct sd*,int ,int*) ;

__attribute__((used)) static int m5602_wait_for_i2c(struct sd *sd)
{
 int err;
 u8 data;

 do {
  err = m5602_read_bridge(sd, M5602_XB_I2C_STATUS, &data);
 } while ((data & I2C_BUSY) && !err);
 return err;
}
