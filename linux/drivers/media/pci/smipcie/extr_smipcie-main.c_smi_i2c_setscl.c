
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_dev {int dummy; } ;


 int SW_I2C_MSK_CLK_EN ;
 int SW_I2C_MSK_CLK_OUT ;
 int smi_clear (int ,int ) ;
 int smi_set (int ,int ) ;

__attribute__((used)) static void smi_i2c_setscl(void *data, int state, u32 sw_ctl)
{
 struct smi_dev *dev = data;

 if (state) {

  smi_clear(sw_ctl, SW_I2C_MSK_CLK_EN);
 } else {
  smi_clear(sw_ctl, SW_I2C_MSK_CLK_OUT);

  smi_set(sw_ctl, SW_I2C_MSK_CLK_EN);
 }
}
