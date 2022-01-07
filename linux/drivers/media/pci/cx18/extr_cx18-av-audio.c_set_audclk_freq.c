
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18_av_state {scalar_t__ aud_input; int audclk_freq; } ;
struct cx18 {struct cx18_av_state av_state; } ;


 scalar_t__ CX18_AV_AUDIO_SERIAL2 ;
 int EINVAL ;
 int cx18_av_write (struct cx18*,int,int) ;
 int cx18_av_write4 (struct cx18*,int,int) ;

__attribute__((used)) static int set_audclk_freq(struct cx18 *cx, u32 freq)
{
 struct cx18_av_state *state = &cx->av_state;

 if (freq != 32000 && freq != 44100 && freq != 48000)
  return -EINVAL;
 if (state->aud_input > CX18_AV_AUDIO_SERIAL2) {
  switch (freq) {
  case 32000:




   cx18_av_write4(cx, 0x108, 0x200d040f);



   cx18_av_write4(cx, 0x10c, 0x002be2fe);



   cx18_av_write4(cx, 0x110, 0x0176740c);



   cx18_av_write4(cx, 0x900, 0x0801f77f);
   cx18_av_write4(cx, 0x904, 0x0801f77f);
   cx18_av_write4(cx, 0x90c, 0x0801f77f);


   cx18_av_write(cx, 0x127, 0x60);


   cx18_av_write4(cx, 0x12c, 0x11202fff);






   cx18_av_write4(cx, 0x128, 0xa00d2ef8);
   break;

  case 44100:




   cx18_av_write4(cx, 0x108, 0x180e040f);



   cx18_av_write4(cx, 0x10c, 0x002be2fe);



   cx18_av_write4(cx, 0x110, 0x0062a1f2);



   cx18_av_write4(cx, 0x900, 0x08016d59);
   cx18_av_write4(cx, 0x904, 0x08016d59);
   cx18_av_write4(cx, 0x90c, 0x08016d59);


   cx18_av_write(cx, 0x127, 0x58);


   cx18_av_write4(cx, 0x12c, 0x112092ff);






   cx18_av_write4(cx, 0x128, 0xa01d4bf8);
   break;

  case 48000:




   cx18_av_write4(cx, 0x108, 0x160e040f);



   cx18_av_write4(cx, 0x10c, 0x002be2fe);



   cx18_av_write4(cx, 0x110, 0x005227ad);



   cx18_av_write4(cx, 0x900, 0x08014faa);
   cx18_av_write4(cx, 0x904, 0x08014faa);
   cx18_av_write4(cx, 0x90c, 0x08014faa);


   cx18_av_write(cx, 0x127, 0x56);


   cx18_av_write4(cx, 0x12c, 0x11205fff);






   cx18_av_write4(cx, 0x128, 0xa01193f8);
   break;
  }
 } else {
  switch (freq) {
  case 32000:




   cx18_av_write4(cx, 0x108, 0x300d040f);



   cx18_av_write4(cx, 0x10c, 0x002be2fe);



   cx18_av_write4(cx, 0x110, 0x0176740c);



   cx18_av_write4(cx, 0x8f8, 0x08010000);



   cx18_av_write4(cx, 0x900, 0x08020000);
   cx18_av_write4(cx, 0x904, 0x08020000);
   cx18_av_write4(cx, 0x90c, 0x08020000);


   cx18_av_write(cx, 0x127, 0x70);


   cx18_av_write4(cx, 0x12c, 0x11201fff);






   cx18_av_write4(cx, 0x128, 0xa00d2ef8);
   break;

  case 44100:




   cx18_av_write4(cx, 0x108, 0x240e040f);



   cx18_av_write4(cx, 0x10c, 0x002be2fe);



   cx18_av_write4(cx, 0x110, 0x0062a1f2);



   cx18_av_write4(cx, 0x8f8, 0x080160cd);



   cx18_av_write4(cx, 0x900, 0x08017385);
   cx18_av_write4(cx, 0x904, 0x08017385);
   cx18_av_write4(cx, 0x90c, 0x08017385);


   cx18_av_write(cx, 0x127, 0x64);


   cx18_av_write4(cx, 0x12c, 0x112061ff);






   cx18_av_write4(cx, 0x128, 0xa01d4bf8);
   break;

  case 48000:




   cx18_av_write4(cx, 0x108, 0x200d040f);



   cx18_av_write4(cx, 0x10c, 0x002be2fe);



   cx18_av_write4(cx, 0x110, 0x0176740c);



   cx18_av_write4(cx, 0x8f8, 0x08018000);



   cx18_av_write4(cx, 0x900, 0x08015555);
   cx18_av_write4(cx, 0x904, 0x08015555);
   cx18_av_write4(cx, 0x90c, 0x08015555);


   cx18_av_write(cx, 0x127, 0x60);


   cx18_av_write4(cx, 0x12c, 0x11203fff);






   cx18_av_write4(cx, 0x128, 0xa01193f8);
   break;
  }
 }

 state->audclk_freq = freq;

 return 0;
}
