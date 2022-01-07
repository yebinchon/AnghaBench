
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_dev {int dummy; } ;


 int SW_I2C_MSK_DAT_EN ;
 int SW_I2C_MSK_DAT_IN ;
 int smi_clear (int ,int ) ;
 int smi_read (int ) ;
 int udelay (int) ;

__attribute__((used)) static int smi_i2c_getsda(void *data, u32 sw_ctl)
{
 struct smi_dev *dev = data;

 smi_clear(sw_ctl, SW_I2C_MSK_DAT_EN);
 udelay(1);
 return (smi_read(sw_ctl) & SW_I2C_MSK_DAT_IN) ? 1 : 0;
}
