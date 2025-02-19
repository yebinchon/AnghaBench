
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int ADC_PWRDN_CLAMP_CH2 ;
 int afe_read_byte (struct cx231xx*,int ,int*) ;
 int afe_write_byte (struct cx231xx*,int ,int) ;

int cx231xx_afe_setup_AFE_for_baseband(struct cx231xx *dev)
{
 u8 c_value = 0;
 int status = 0;

 status = afe_read_byte(dev, ADC_PWRDN_CLAMP_CH2, &c_value);
 c_value &= (~(0x50));
 status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2, c_value);

 return status;
}
