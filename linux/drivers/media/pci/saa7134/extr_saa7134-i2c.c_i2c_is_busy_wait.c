
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum i2c_status { ____Placeholder_i2c_status } i2c_status ;


 int I2C_WAIT_DELAY ;
 int I2C_WAIT_RETRY ;
 int i2c_get_status (struct saa7134_dev*) ;
 int i2c_is_busy (int) ;
 int saa_wait (int ) ;

__attribute__((used)) static int i2c_is_busy_wait(struct saa7134_dev *dev)
{
 enum i2c_status status;
 int count;

 for (count = 0; count < I2C_WAIT_RETRY; count++) {
  status = i2c_get_status(dev);
  if (!i2c_is_busy(status))
   break;
  saa_wait(I2C_WAIT_DELAY);
 }
 if (I2C_WAIT_RETRY == count)
  return 0;
 return 1;
}
