
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {struct au0828_dev* algo_data; } ;
struct au0828_dev {int dummy; } ;


 int AU0828_I2C_STATUS_201 ;
 int AU0828_I2C_STATUS_READ_DONE ;
 int au0828_read (struct au0828_dev*,int ) ;

__attribute__((used)) static inline int i2c_is_read_busy(struct i2c_adapter *i2c_adap)
{
 struct au0828_dev *dev = i2c_adap->algo_data;
 return au0828_read(dev, AU0828_I2C_STATUS_201) &
  AU0828_I2C_STATUS_READ_DONE ? 0 : 1;
}
