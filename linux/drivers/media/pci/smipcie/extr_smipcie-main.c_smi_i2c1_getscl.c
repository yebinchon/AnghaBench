
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_dev {int dummy; } ;


 int I2C_B_SW_CTL ;
 int smi_i2c_getscl (struct smi_dev*,int ) ;

__attribute__((used)) static int smi_i2c1_getscl(void *data)
{
 struct smi_dev *dev = data;

 return smi_i2c_getscl(dev, I2C_B_SW_CTL);
}
