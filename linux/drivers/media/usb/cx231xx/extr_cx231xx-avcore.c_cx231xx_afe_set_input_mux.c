
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;


 int ADC_INPUT_CH1 ;
 int ADC_INPUT_CH2 ;
 int ADC_INPUT_CH3 ;
 int INPUT_SEL_MASK ;
 int afe_read_byte (struct cx231xx*,int ,int*) ;
 int afe_write_byte (struct cx231xx*,int ,int) ;

int cx231xx_afe_set_input_mux(struct cx231xx *dev, u32 input_mux)
{
 u8 ch1_setting = (u8) input_mux;
 u8 ch2_setting = (u8) (input_mux >> 8);
 u8 ch3_setting = (u8) (input_mux >> 16);
 int status = 0;
 u8 value = 0;

 if (ch1_setting != 0) {
  status = afe_read_byte(dev, ADC_INPUT_CH1, &value);
  value &= ~INPUT_SEL_MASK;
  value |= (ch1_setting - 1) << 4;
  value &= 0xff;
  status = afe_write_byte(dev, ADC_INPUT_CH1, value);
 }

 if (ch2_setting != 0) {
  status = afe_read_byte(dev, ADC_INPUT_CH2, &value);
  value &= ~INPUT_SEL_MASK;
  value |= (ch2_setting - 1) << 4;
  value &= 0xff;
  status = afe_write_byte(dev, ADC_INPUT_CH2, value);
 }



 if (ch3_setting != 0) {
  status = afe_read_byte(dev, ADC_INPUT_CH3, &value);
  value &= ~INPUT_SEL_MASK;
  value |= (ch3_setting - 1) << 4;
  value &= 0xff;
  status = afe_write_byte(dev, ADC_INPUT_CH3, value);
 }

 return status;
}
