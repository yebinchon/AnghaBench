
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_dev {int dummy; } ;


 int I2C_B_SW_CTL ;
 int smi_i2c_setscl (struct smi_dev*,int,int ) ;

__attribute__((used)) static void smi_i2c1_setscl(void *data, int state)
{
 struct smi_dev *dev = data;

 smi_i2c_setscl(dev, state, I2C_B_SW_CTL);
}
