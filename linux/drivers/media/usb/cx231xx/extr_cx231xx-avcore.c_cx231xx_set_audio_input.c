
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cx231xx {int dummy; } ;
typedef enum AUDIO_INPUT { ____Placeholder_AUDIO_INPUT } AUDIO_INPUT ;
struct TYPE_2__ {int amux; } ;


 int AUDIO_INPUT_LINE ;
 int AUDIO_INPUT_TUNER_TV ;


 TYPE_1__* INPUT (int ) ;
 int cx231xx_i2s_blk_set_audio_input (struct cx231xx*,int ) ;
 int cx231xx_set_audio_decoder_input (struct cx231xx*,int) ;

int cx231xx_set_audio_input(struct cx231xx *dev, u8 input)
{
 int status = 0;
 enum AUDIO_INPUT ainput = AUDIO_INPUT_LINE;

 switch (INPUT(input)->amux) {
 case 128:
  ainput = AUDIO_INPUT_TUNER_TV;
  break;
 case 129:
  status = cx231xx_i2s_blk_set_audio_input(dev, input);
  ainput = AUDIO_INPUT_LINE;
  break;
 default:
  break;
 }

 status = cx231xx_set_audio_decoder_input(dev, ainput);

 return status;
}
