
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int vbi_regs_offset; int vid_input; int aud_input; } ;
typedef enum cx25840_video_input { ____Placeholder_cx25840_video_input } cx25840_video_input ;
typedef enum cx25840_audio_input { ____Placeholder_cx25840_audio_input } cx25840_audio_input ;


 int AFE_CTRL ;






 int CX25840_COMPONENT_ON ;
 int CX25840_COMPOSITE1 ;
 int CX25840_COMPOSITE8 ;
 int CX25840_DIF_ON ;
 int CX25840_SVIDEO_CHROMA4 ;
 int CX25840_SVIDEO_CHROMA7 ;
 int CX25840_SVIDEO_CHROMA8 ;
 int CX25840_SVIDEO_LUMA1 ;
 int CX25840_SVIDEO_LUMA8 ;
 int CX25840_SVIDEO_ON ;
 int CX25840_VIN1_CH1 ;
 int EINVAL ;
 int MODE_CTRL ;
 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int cx25840_audio_set_path (struct i2c_client*) ;
 int cx25840_debug ;
 int cx25840_read4 (struct i2c_client*,int) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int cx25840_write4 (struct i2c_client*,int,int) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int input_change (struct i2c_client*) ;
 scalar_t__ is_cx231xx (struct cx25840_state*) ;
 scalar_t__ is_cx23888 (struct cx25840_state*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 struct cx25840_state* to_state (int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int,...) ;
 int v4l_err (struct i2c_client*,char*,int) ;

__attribute__((used)) static int set_input(struct i2c_client *client,
       enum cx25840_video_input vid_input,
       enum cx25840_audio_input aud_input)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));
 u8 is_composite = (vid_input >= CX25840_COMPOSITE1 &&
      vid_input <= CX25840_COMPOSITE8);
 u8 is_component = (vid_input & CX25840_COMPONENT_ON) ==
   CX25840_COMPONENT_ON;
 u8 is_dif = (vid_input & CX25840_DIF_ON) ==
   CX25840_DIF_ON;
 u8 is_svideo = (vid_input & CX25840_SVIDEO_ON) ==
   CX25840_SVIDEO_ON;
 int luma = vid_input & 0xf0;
 int chroma = vid_input & 0xf00;
 u8 reg;
 u32 val;

 v4l_dbg(1, cx25840_debug, client,
  "decoder set video input %d, audio input %d\n",
  vid_input, aud_input);

 if (vid_input >= CX25840_VIN1_CH1) {
  v4l_dbg(1, cx25840_debug, client, "vid_input 0x%x\n",
   vid_input);
  reg = vid_input & 0xff;
  is_composite = !is_component &&
          ((vid_input & CX25840_SVIDEO_ON) != CX25840_SVIDEO_ON);

  v4l_dbg(1, cx25840_debug, client, "mux cfg 0x%x comp=%d\n",
   reg, is_composite);
 } else if (is_composite) {
  reg = 0xf0 + (vid_input - CX25840_COMPOSITE1);
 } else {
  if ((vid_input & ~0xff0) ||
      luma < CX25840_SVIDEO_LUMA1 ||
      luma > CX25840_SVIDEO_LUMA8 ||
      chroma < CX25840_SVIDEO_CHROMA4 ||
      chroma > CX25840_SVIDEO_CHROMA8) {
   v4l_err(client, "0x%04x is not a valid video input!\n",
    vid_input);
   return -EINVAL;
  }
  reg = 0xf0 + ((luma - CX25840_SVIDEO_LUMA1) >> 4);
  if (chroma >= CX25840_SVIDEO_CHROMA7) {
   reg &= 0x3f;
   reg |= (chroma - CX25840_SVIDEO_CHROMA7) >> 2;
  } else {
   reg &= 0xcf;
   reg |= (chroma - CX25840_SVIDEO_CHROMA4) >> 4;
  }
 }





 if (!is_cx2388x(state) && !is_cx231xx(state)) {
  switch (aud_input) {
  case 128:

   break;
  case 133:
   reg &= ~0x30;
   break;
  case 132:
   reg &= ~0x30;
   reg |= 0x10;
   break;
  case 131:
   reg &= ~0x30;
   reg |= 0x20;
   break;
  case 130:
   reg &= ~0xc0;
   break;
  case 129:
   reg &= ~0xc0;
   reg |= 0x40;
   break;
  default:
   v4l_err(client, "0x%04x is not a valid audio input!\n",
    aud_input);
   return -EINVAL;
  }
 }

 cx25840_write(client, 0x103, reg);


 if (is_component)
  cx25840_and_or(client, 0x401, ~0x6, 0x6);
 else
  cx25840_and_or(client, 0x401, ~0x6, is_composite ? 0 : 0x02);

 if (is_cx2388x(state)) {

  if (is_dif) {
   cx25840_and_or(client, 0x102, ~0x80, 0x80);


   cx25840_write4(client, 0x31c, 0xc2262600);
   cx25840_write4(client, 0x320, 0xc2262600);





   cx25840_write4(client, 0x318, 0xda262600);
   cx25840_write4(client, 0x33c, 0x2a24c800);
   cx25840_write4(client, 0x104, 0x0704dd00);
  } else {
   cx25840_write4(client, 0x300, 0x015c28f5);

   cx25840_and_or(client, 0x102, ~0x80, 0);
   cx25840_write4(client, 0x340, 0xdf7df83);
   cx25840_write4(client, 0x104, 0x0704dd80);
   cx25840_write4(client, 0x314, 0x22400600);
   cx25840_write4(client, 0x318, 0x40002600);
   cx25840_write4(client, 0x324, 0x40002600);
   cx25840_write4(client, 0x32c, 0x0250e620);
   cx25840_write4(client, 0x39c, 0x01FF0B00);

   cx25840_write4(client, 0x410, 0xffff0dbf);
   cx25840_write4(client, 0x414, 0x00137d03);

   cx25840_write4(client, state->vbi_regs_offset + 0x42c,
           0x42600000);
   cx25840_write4(client, state->vbi_regs_offset + 0x430,
           0x0000039b);
   cx25840_write4(client, state->vbi_regs_offset + 0x438,
           0x00000000);

   cx25840_write4(client, state->vbi_regs_offset + 0x440,
           0xF8E3E824);
   cx25840_write4(client, state->vbi_regs_offset + 0x444,
           0x401040dc);
   cx25840_write4(client, state->vbi_regs_offset + 0x448,
           0xcd3f02a0);
   cx25840_write4(client, state->vbi_regs_offset + 0x44c,
           0x161f1000);
   cx25840_write4(client, state->vbi_regs_offset + 0x450,
           0x00000802);

   cx25840_write4(client, 0x91c, 0x01000000);
   cx25840_write4(client, 0x8e0, 0x03063870);
   cx25840_write4(client, 0x8d4, 0x7FFF0024);
   cx25840_write4(client, 0x8d0, 0x00063073);

   cx25840_write4(client, 0x8c8, 0x00010000);
   cx25840_write4(client, 0x8cc, 0x00080023);


   cx25840_write4(client, 0x33c, 0x2a04c800);
  }


  cx25840_write4(client, 0x398, 0);
 }

 if (!is_cx2388x(state) && !is_cx231xx(state)) {

  cx25840_and_or(client, 0x102, ~0x2, (reg & 0x80) == 0 ? 2 : 0);

  if ((reg & 0xc0) != 0xc0 && (reg & 0x30) != 0x30)
   cx25840_and_or(client, 0x102, ~0x4, 4);
  else
   cx25840_and_or(client, 0x102, ~0x4, 0);
 } else {

  cx25840_and_or(client, 0x102, ~0x4, is_component ? 0x4 : 0x0);
  if (is_composite) {

   cx25840_and_or(client, 0x102, ~0x2, 0);
  } else if (!is_component) {

   if (chroma >= CX25840_SVIDEO_CHROMA7) {

    cx25840_and_or(client, 0x102, ~0x2, 2);
   } else {

    cx25840_and_or(client, 0x102, ~0x2, 0);
   }
  }


  if (is_cx2388x(state) && is_svideo) {


   cx25840_and_or(client, 0x102, ~0x2, 0x2);

   val = cx25840_read4(client, (0x400));
   val &= 0xFFFFF9FF;


   val |= 0x00000200;
   val &= ~0x2000;
   cx25840_write4(client, (0x400), val);

   val = cx25840_read4(client, (0x104));


   val |= 0x00001000;
   val &= 0xfffffe7f;




   cx25840_write4(client, (0x104), val);
  } else {
   cx25840_and_or(client, 0x102, ~0x2, 0);
  }
 }

 state->vid_input = vid_input;
 state->aud_input = aud_input;
 cx25840_audio_set_path(client);
 input_change(client);

 if (is_cx2388x(state)) {

  cx25840_write(client, 0x124, 0x03);


  cx25840_write(client, 0x144, 0x05);


  cx25840_write(client, 0x914, 0xa0);





  cx25840_write(client, 0x918, 0xa0);
  cx25840_write(client, 0x919, 0x01);
 } else if (is_cx231xx(state)) {

  cx25840_write(client, 0x124, 0x03);


  cx25840_write(client, 0x914, 0xa0);





  cx25840_write(client, 0x918, 0xa0);
  cx25840_write(client, 0x919, 0x01);
 }

 if (is_cx2388x(state) &&
     ((aud_input == 130) || (aud_input == 131))) {

  cx25840_write4(client, 0x910, 0);
  cx25840_write4(client, 0x8d0, 0x63073);
 } else if (is_cx2388x(state) && (aud_input == 129)) {

  cx25840_write4(client, 0x910, 0x12b000c9);
  cx25840_write4(client, 0x8d0, 0x1f063870);
 }

 if (is_cx23888(state)) {
  cx25840_write4(client, 0x124, 0x100);

  if (!is_dif) {




   cx25840_and_or(client, 0x803, ~0x10, 0x00);
  }
 }

 return 0;
}
