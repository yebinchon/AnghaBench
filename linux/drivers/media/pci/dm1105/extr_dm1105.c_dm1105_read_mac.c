
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dm1105_dev {TYPE_1__* pdev; int i2c_adap; } ;
struct TYPE_2__ {int dev; } ;


 int I2C_M_RD ;
 int IIC_24C01_addr ;
 int dev_info (int *,char*,int*) ;
 int dm1105_i2c_xfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static void dm1105_read_mac(struct dm1105_dev *dev, u8 *mac)
{
 static u8 command[1] = { 0x28 };

 struct i2c_msg msg[] = {
  {
   .addr = IIC_24C01_addr >> 1,
   .flags = 0,
   .buf = command,
   .len = 1
  }, {
   .addr = IIC_24C01_addr >> 1,
   .flags = I2C_M_RD,
   .buf = mac,
   .len = 6
  },
 };

 dm1105_i2c_xfer(&dev->i2c_adap, msg , 2);
 dev_info(&dev->pdev->dev, "MAC %pM\n", mac);
}
