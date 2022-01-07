
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx18_av_state {scalar_t__ aud_input; int audclk_freq; } ;
struct cx18 {struct cx18_av_state av_state; } ;


 scalar_t__ CX18_AV_AUDIO_SERIAL2 ;
 int cx18_av_read (struct cx18*,int) ;
 int cx18_av_write (struct cx18*,int,int) ;
 int cx18_av_write4 (struct cx18*,int,int) ;
 int cx18_av_write_expect (struct cx18*,int,int,int,int) ;
 int set_audclk_freq (struct cx18*,int ) ;

void cx18_av_audio_set_path(struct cx18 *cx)
{
 struct cx18_av_state *state = &cx->av_state;
 u8 v;


 v = cx18_av_read(cx, 0x803) & ~0x10;
 cx18_av_write_expect(cx, 0x803, v, v, 0x1f);


 v = cx18_av_read(cx, 0x810) | 0x01;
 cx18_av_write_expect(cx, 0x810, v, v, 0x0f);


 cx18_av_write(cx, 0x8d3, 0x1f);

 if (state->aud_input <= CX18_AV_AUDIO_SERIAL2) {

  cx18_av_write4(cx, 0x8d0, 0x01011012);




 } else {

  cx18_av_write4(cx, 0x8d0, 0x1f063870);
 }

 set_audclk_freq(cx, state->audclk_freq);


 v = cx18_av_read(cx, 0x810) & ~0x01;
 cx18_av_write_expect(cx, 0x810, v, v, 0x0f);

 if (state->aud_input > CX18_AV_AUDIO_SERIAL2) {


  v = cx18_av_read(cx, 0x803) | 0x10;
  cx18_av_write_expect(cx, 0x803, v, v, 0x1f);
 }
}
