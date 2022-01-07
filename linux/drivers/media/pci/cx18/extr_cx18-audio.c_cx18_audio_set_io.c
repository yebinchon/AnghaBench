
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cx18_card_audio_input {int audio_input; scalar_t__ muxer_input; } ;
struct cx18 {size_t audio_input; TYPE_1__* card; int sd_extmux; int i_flags; } ;
struct TYPE_2__ {int hw_audio_ctrl; struct cx18_card_audio_input* audio_inputs; struct cx18_card_audio_input radio_input; } ;


 int CX18_AI1_MUX_843_I2S ;
 int CX18_AI1_MUX_I2S1 ;
 int CX18_AI1_MUX_I2S2 ;
 int CX18_AI1_MUX_MASK ;
 int CX18_AUDIO_ENABLE ;


 int CX18_F_I_RADIO_USER ;
 int audio ;
 int cx18_call_hw_err (struct cx18*,int ,int ,int ,int,int ,int ) ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg_expect (struct cx18*,int,int ,int,int) ;
 int s_routing ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int,int ,int ) ;

int cx18_audio_set_io(struct cx18 *cx)
{
 const struct cx18_card_audio_input *in;
 u32 u, v;
 int err;


 if (test_bit(CX18_F_I_RADIO_USER, &cx->i_flags))
  in = &cx->card->radio_input;
 else
  in = &cx->card->audio_inputs[cx->audio_input];


 v4l2_subdev_call(cx->sd_extmux, audio, s_routing,
    (u32) in->muxer_input, 0, 0);

 err = cx18_call_hw_err(cx, cx->card->hw_audio_ctrl,
          audio, s_routing, in->audio_input, 0, 0);
 if (err)
  return err;


 u = cx18_read_reg(cx, CX18_AUDIO_ENABLE);
 v = u & ~CX18_AI1_MUX_MASK;
 switch (in->audio_input) {
 case 129:
  v |= CX18_AI1_MUX_I2S1;
  break;
 case 128:
  v |= CX18_AI1_MUX_I2S2;
  break;
 default:
  v |= CX18_AI1_MUX_843_I2S;
  break;
 }
 if (v == u) {

  u &= ~CX18_AI1_MUX_MASK;
  switch (in->audio_input) {
  case 129:
   u |= CX18_AI1_MUX_843_I2S;
   break;
  case 128:
   u |= CX18_AI1_MUX_843_I2S;
   break;
  default:
   u |= CX18_AI1_MUX_I2S1;
   break;
  }
  cx18_write_reg_expect(cx, u | 0xb00, CX18_AUDIO_ENABLE,
          u, CX18_AI1_MUX_MASK);
 }
 cx18_write_reg_expect(cx, v | 0xb00, CX18_AUDIO_ENABLE,
         v, CX18_AI1_MUX_MASK);
 return 0;
}
