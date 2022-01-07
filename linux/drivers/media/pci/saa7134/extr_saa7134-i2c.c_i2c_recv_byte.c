
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum i2c_status { ____Placeholder_i2c_status } i2c_status ;


 int CONTINUE ;
 int EIO ;
 int SAA7134_I2C_DATA ;
 int i2c_dbg (int,char*,unsigned char) ;
 int i2c_get_status (struct saa7134_dev*) ;
 int i2c_is_busy_wait (struct saa7134_dev*) ;
 scalar_t__ i2c_is_error (int) ;
 int i2c_set_attr (struct saa7134_dev*,int ) ;
 unsigned char saa_readb (int ) ;

__attribute__((used)) static inline int i2c_recv_byte(struct saa7134_dev *dev)
{
 enum i2c_status status;
 unsigned char data;

 i2c_set_attr(dev,CONTINUE);
 if (!i2c_is_busy_wait(dev))
  return -EIO;
 status = i2c_get_status(dev);
 if (i2c_is_error(status))
  return -EIO;
 data = saa_readb(SAA7134_I2C_DATA);
 i2c_dbg(2, "i2c data <= 0x%x\n", data);
 return data;
}
