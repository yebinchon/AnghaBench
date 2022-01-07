
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int VERVE_I2C_ADDRESS ;
 int cx231xx_write_i2c_data (struct cx231xx*,int ,int ,int,int ,int) ;

__attribute__((used)) static int verve_write_byte(struct cx231xx *dev, u8 saddr, u8 data)
{
 return cx231xx_write_i2c_data(dev, VERVE_I2C_ADDRESS,
     saddr, 1, data, 1);
}
