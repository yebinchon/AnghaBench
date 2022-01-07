
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int ADC_CTRL_DAC1_CH3 ;
 int ADC_CTRL_DAC23_CH3 ;
 int ADC_DCSERVO_DEM_CH3 ;
 int ADC_FB_FRCRST_CH3 ;
 int ADC_INPUT_CH3 ;
 int ADC_NTF_PRECLMP_EN_CH3 ;
 int ADC_PWRDN_CLAMP_CH3 ;
 int ADC_STATUS2_CH3 ;
 int afe_read_byte (struct cx231xx*,int ,int*) ;
 int afe_write_byte (struct cx231xx*,int ,int) ;

void cx231xx_Setup_AFE_for_LowIF(struct cx231xx *dev)

{
 u8 value = 0;

 afe_read_byte(dev, ADC_STATUS2_CH3, &value);
 value = (value & 0xFE)|0x01;
 afe_write_byte(dev, ADC_STATUS2_CH3, value);

 afe_read_byte(dev, ADC_STATUS2_CH3, &value);
 value = (value & 0xFE)|0x00;
 afe_write_byte(dev, ADC_STATUS2_CH3, value);
 afe_read_byte(dev, ADC_NTF_PRECLMP_EN_CH3, &value);
 value = (value & 0xFC)|0x00;
 afe_write_byte(dev, ADC_NTF_PRECLMP_EN_CH3, value);

 afe_read_byte(dev, ADC_INPUT_CH3, &value);
 value = (value & 0xF9)|0x02;
 afe_write_byte(dev, ADC_INPUT_CH3, value);

 afe_read_byte(dev, ADC_FB_FRCRST_CH3, &value);
 value = (value & 0xFB)|0x04;
 afe_write_byte(dev, ADC_FB_FRCRST_CH3, value);

 afe_read_byte(dev, ADC_DCSERVO_DEM_CH3, &value);
 value = (value & 0xFC)|0x03;
 afe_write_byte(dev, ADC_DCSERVO_DEM_CH3, value);

 afe_read_byte(dev, ADC_CTRL_DAC1_CH3, &value);
 value = (value & 0xFB)|0x04;
 afe_write_byte(dev, ADC_CTRL_DAC1_CH3, value);

 afe_read_byte(dev, ADC_CTRL_DAC23_CH3, &value);
 value = (value & 0xF8)|0x06;
 afe_write_byte(dev, ADC_CTRL_DAC23_CH3, value);

 afe_read_byte(dev, ADC_CTRL_DAC23_CH3, &value);
 value = (value & 0x8F)|0x40;
 afe_write_byte(dev, ADC_CTRL_DAC23_CH3, value);

 afe_read_byte(dev, ADC_PWRDN_CLAMP_CH3, &value);
 value = (value & 0xDF)|0x20;
 afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3, value);
}
