
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_dev {int dummy; } ;


 int I2C_A_SW_CTL ;
 int smi_i2c_getsda (struct smi_dev*,int ) ;

__attribute__((used)) static int smi_i2c0_getsda(void *data)
{
 struct smi_dev *dev = data;

 return smi_i2c_getsda(dev, I2C_A_SW_CTL);
}
