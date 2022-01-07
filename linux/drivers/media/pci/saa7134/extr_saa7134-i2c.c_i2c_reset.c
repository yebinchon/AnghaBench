
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum i2c_status { ____Placeholder_i2c_status } i2c_status ;


 int I2C_WAIT_DELAY ;
 int I2C_WAIT_RETRY ;
 int NOP ;
 int i2c_dbg (int,char*) ;
 int i2c_get_status (struct saa7134_dev*) ;
 int i2c_is_error (int) ;
 int i2c_is_idle (int) ;
 int i2c_set_attr (struct saa7134_dev*,int ) ;
 int i2c_set_status (struct saa7134_dev*,int) ;
 int udelay (int ) ;

__attribute__((used)) static int i2c_reset(struct saa7134_dev *dev)
{
 enum i2c_status status;
 int count;

 i2c_dbg(2, "i2c reset\n");
 status = i2c_get_status(dev);
 if (!i2c_is_error(status))
  return 1;
 i2c_set_status(dev,status);

 for (count = 0; count < I2C_WAIT_RETRY; count++) {
  status = i2c_get_status(dev);
  if (!i2c_is_error(status))
   break;
  udelay(I2C_WAIT_DELAY);
 }
 if (I2C_WAIT_RETRY == count)
  return 0;

 if (!i2c_is_idle(status))
  return 0;

 i2c_set_attr(dev,NOP);
 return 1;
}
