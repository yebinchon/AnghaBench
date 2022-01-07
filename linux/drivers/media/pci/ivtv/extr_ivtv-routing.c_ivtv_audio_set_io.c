
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ivtv_card_audio_input {scalar_t__ audio_input; scalar_t__ muxer_input; } ;
struct ivtv {size_t audio_input; TYPE_1__* card; int sd_muxer; int i_flags; } ;
struct TYPE_2__ {int hw_muxer; int hw_audio; struct ivtv_card_audio_input* audio_inputs; struct ivtv_card_audio_input radio_input; } ;


 int IVTV_F_I_RADIO_USER ;
 int IVTV_HW_M52790 ;
 int IVTV_HW_MSP34XX ;
 scalar_t__ M52790_OUT_STEREO ;
 scalar_t__ MSP_OUTPUT (int ) ;
 int MSP_SC_IN_DSP_SCART1 ;
 int audio ;
 int ivtv_call_hw (struct ivtv*,int,int ,int ,scalar_t__,scalar_t__,int ) ;
 int s_routing ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_subdev_call (int ,int ,int ,scalar_t__,scalar_t__,int ) ;

void ivtv_audio_set_io(struct ivtv *itv)
{
 const struct ivtv_card_audio_input *in;
 u32 input, output = 0;


 if (test_bit(IVTV_F_I_RADIO_USER, &itv->i_flags))
  in = &itv->card->radio_input;
 else
  in = &itv->card->audio_inputs[itv->audio_input];


 input = in->muxer_input;
 if (itv->card->hw_muxer & IVTV_HW_M52790)
  output = M52790_OUT_STEREO;
 v4l2_subdev_call(itv->sd_muxer, audio, s_routing,
   input, output, 0);

 input = in->audio_input;
 output = 0;
 if (itv->card->hw_audio & IVTV_HW_MSP34XX)
  output = MSP_OUTPUT(MSP_SC_IN_DSP_SCART1);
 ivtv_call_hw(itv, itv->card->hw_audio, audio, s_routing,
   input, output, 0);
}
