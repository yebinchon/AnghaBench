
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum i2c_status { ____Placeholder_i2c_status } i2c_status ;


 int SAA7134_I2C_ATTR_STATUS ;
 int i2c_dbg (int,char*,int ) ;
 int saa_andorb (int ,int,int) ;
 int * str_i2c_status ;

__attribute__((used)) static inline void i2c_set_status(struct saa7134_dev *dev,
      enum i2c_status status)
{
 i2c_dbg(2, "i2c stat => %s\n", str_i2c_status[status]);
 saa_andorb(SAA7134_I2C_ATTR_STATUS,0x0f,status);
}
