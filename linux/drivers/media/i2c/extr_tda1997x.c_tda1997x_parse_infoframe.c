
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pixel_repeat; int colorspace; } ;
struct TYPE_6__ {int channel_allocation; int channels; int sample_size; int sample_frequency; } ;
struct TYPE_5__ {int type; } ;
union hdmi_infoframe {TYPE_3__ avi; TYPE_2__ audio; TYPE_1__ any; } ;
typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int audio_samplerate; int audio_samplesize; TYPE_3__ avi_infoframe; int audio_ch_alloc; int audio_channels; TYPE_4__* client; struct v4l2_subdev sd; } ;
typedef int buffer ;
struct TYPE_8__ {int dev; } ;
 int HDMI_COLORSPACE_YUV422 ;


 int KERN_INFO ;
 int PIX_REPEAT_CHROMA ;
 int PIX_REPEAT_MASK_REP ;
 int PIX_REPEAT_MASK_UP_SEL ;
 int PIX_REPEAT_SHIFT ;
 int REG_PIX_REPEAT ;
 int RESET_AUDIO ;
 int hdmi_infoframe_log (int ,int *,union hdmi_infoframe*) ;
 int hdmi_infoframe_unpack (union hdmi_infoframe*,int*,int) ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_readn (struct v4l2_subdev*,int ,int,int*) ;
 int io_write (struct v4l2_subdev*,int ,int) ;
 int set_rgb_quantization_range (struct tda1997x_state*) ;
 int tda1997x_configure_audout (struct v4l2_subdev*,int ) ;
 int tda1997x_configure_csc (struct v4l2_subdev*) ;
 int tda1997x_hdmi_info_reset (struct v4l2_subdev*,int ,int) ;
 int v4l_err (TYPE_4__*,char*,int,int ,int) ;

__attribute__((used)) static unsigned int
tda1997x_parse_infoframe(struct tda1997x_state *state, u16 addr)
{
 struct v4l2_subdev *sd = &state->sd;
 union hdmi_infoframe frame;
 u8 buffer[40];
 u8 reg;
 int len, err;


 len = io_readn(sd, addr, sizeof(buffer), buffer);
 err = hdmi_infoframe_unpack(&frame, buffer, sizeof(buffer));
 if (err) {
  v4l_err(state->client,
   "failed parsing %d byte infoframe: 0x%04x/0x%02x\n",
   len, addr, buffer[0]);
  return err;
 }
 hdmi_infoframe_log(KERN_INFO, &state->client->dev, &frame);
 switch (frame.any.type) {

 case 129:

  switch (frame.audio.sample_frequency) {
  case 139:
   state->audio_samplerate = 32000;
   break;
  case 138:
   state->audio_samplerate = 44100;
   break;
  case 137:
   state->audio_samplerate = 48000;
   break;
  case 136:
   state->audio_samplerate = 88200;
   break;
  case 135:
   state->audio_samplerate = 96000;
   break;
  case 141:
   state->audio_samplerate = 176400;
   break;
  case 140:
   state->audio_samplerate = 192000;
   break;
  default:
  case 134:
   break;
  }


  switch (frame.audio.sample_size) {
  case 133:
   state->audio_samplesize = 16;
   break;
  case 132:
   state->audio_samplesize = 20;
   break;
  case 131:
   state->audio_samplesize = 24;
   break;
  case 130:
  default:
   break;
  }


  state->audio_channels = frame.audio.channels;
  if (frame.audio.channel_allocation &&
      frame.audio.channel_allocation != state->audio_ch_alloc) {

   state->audio_ch_alloc = frame.audio.channel_allocation;
   tda1997x_configure_audout(sd, state->audio_ch_alloc);

   tda1997x_hdmi_info_reset(sd, RESET_AUDIO, 0);
  }
  break;


 case 128:
  state->avi_infoframe = frame.avi;
  set_rgb_quantization_range(state);


  reg = io_read(sd, REG_PIX_REPEAT);
  reg &= ~PIX_REPEAT_MASK_UP_SEL;
  if (frame.avi.colorspace == HDMI_COLORSPACE_YUV422)
   reg |= (PIX_REPEAT_CHROMA << PIX_REPEAT_SHIFT);
  io_write(sd, REG_PIX_REPEAT, reg);


  reg = io_read(sd, REG_PIX_REPEAT);
  reg &= ~PIX_REPEAT_MASK_REP;
  reg |= frame.avi.pixel_repeat;
  io_write(sd, REG_PIX_REPEAT, reg);


  tda1997x_configure_csc(sd);
  break;
 default:
  break;
 }
 return 0;
}
