
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dummy; } ;


 int VID_BLK_I2C_ADDRESS ;
 int cx231xx_read_i2c_data (struct cx231xx*,int ,int ,int,int *,int) ;

__attribute__((used)) static int vid_blk_read_word(struct cx231xx *dev, u16 saddr, u32 *data)
{
 return cx231xx_read_i2c_data(dev, VID_BLK_I2C_ADDRESS,
     saddr, 2, data, 4);
}
