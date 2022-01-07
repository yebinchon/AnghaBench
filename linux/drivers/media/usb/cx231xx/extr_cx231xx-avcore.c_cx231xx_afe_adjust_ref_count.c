
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct cx231xx {int afe_ref_count; scalar_t__ video_input; } ;


 int ADC_INPUT_CH1 ;
 int ADC_INPUT_CH3 ;
 int ADC_NTF_PRECLMP_EN_CH1 ;
 int ADC_NTF_PRECLMP_EN_CH3 ;
 scalar_t__ CX231XX_VMUX_TELEVISION ;




 int afe_read_byte (struct cx231xx*,int ,int*) ;
 int cx231xx_afe_init_super_block (struct cx231xx*,int) ;

int cx231xx_afe_adjust_ref_count(struct cx231xx *dev, u32 video_input)
{
 u8 input_mode = 0;
 u8 ntf_mode = 0;
 int status = 0;

 dev->video_input = video_input;

 if (video_input == CX231XX_VMUX_TELEVISION) {
  status = afe_read_byte(dev, ADC_INPUT_CH3, &input_mode);
  status = afe_read_byte(dev, ADC_NTF_PRECLMP_EN_CH3,
     &ntf_mode);
 } else {
  status = afe_read_byte(dev, ADC_INPUT_CH1, &input_mode);
  status = afe_read_byte(dev, ADC_NTF_PRECLMP_EN_CH1,
     &ntf_mode);
 }

 input_mode = (ntf_mode & 0x3) | ((input_mode & 0x6) << 1);

 switch (input_mode) {
 case 129:
  dev->afe_ref_count = 0x23C;
  break;
 case 130:
  dev->afe_ref_count = 0x24C;
  break;
 case 131:
  dev->afe_ref_count = 0x258;
  break;
 case 128:
  dev->afe_ref_count = 0x260;
  break;
 default:
  break;
 }

 status = cx231xx_afe_init_super_block(dev, dev->afe_ref_count);

 return status;
}
