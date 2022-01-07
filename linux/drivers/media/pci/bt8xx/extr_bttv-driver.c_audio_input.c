
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct bttv {scalar_t__ sd_tvaudio; scalar_t__ sd_msp34xx; TYPE_1__ c; int radio_uses_msp_demodulator; int mute; } ;


 int BTTV_BOARD_VOODOOTV_200 ;
 int MSP_DSP_IN_SCART ;
 int MSP_DSP_IN_TUNER ;
 int MSP_INPUT (int ,int ,int ,int ) ;
 int MSP_INPUT_DEFAULT ;
 int MSP_IN_SCART1 ;
 int MSP_IN_SCART2 ;
 int MSP_IN_TUNER1 ;
 int MSP_IN_TUNER2 ;
 int MSP_OUTPUT_DEFAULT ;




 int audio ;
 int audio_mux_gpio (struct bttv*,int,int ) ;
 int s_routing ;
 int v4l2_subdev_call (scalar_t__,int ,int ,int,int ,int ) ;

__attribute__((used)) static int
audio_input(struct bttv *btv, int input)
{
 audio_mux_gpio(btv, input, btv->mute);

 if (btv->sd_msp34xx) {
  u32 in;






  switch (input) {
  case 129:

   if (btv->radio_uses_msp_demodulator) {
    in = MSP_INPUT_DEFAULT;
    break;
   }
   in = MSP_INPUT(MSP_IN_SCART2, MSP_IN_TUNER1,
        MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
   break;
  case 131:
   in = MSP_INPUT(MSP_IN_SCART1, MSP_IN_TUNER1,
        MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
   break;
  case 130:





   in = MSP_INPUT(MSP_IN_SCART2, MSP_IN_TUNER1,
        MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
   break;
  case 128:
  default:



   if (btv->c.type == BTTV_BOARD_VOODOOTV_200)
    in = MSP_INPUT(MSP_IN_SCART1, MSP_IN_TUNER2, MSP_DSP_IN_TUNER, MSP_DSP_IN_TUNER);

   else
    in = MSP_INPUT_DEFAULT;
   break;
  }
  v4l2_subdev_call(btv->sd_msp34xx, audio, s_routing,
          in, MSP_OUTPUT_DEFAULT, 0);
 }
 if (btv->sd_tvaudio) {
  v4l2_subdev_call(btv->sd_tvaudio, audio, s_routing,
     input, 0, 0);
 }
 return 0;
}
