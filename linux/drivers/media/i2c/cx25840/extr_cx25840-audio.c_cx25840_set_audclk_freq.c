
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ aud_input; int audclk_freq; } ;


 scalar_t__ CX25840_AUDIO_SERIAL ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int cx25840_write4 (struct i2c_client*,int,int) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int is_cx2583x (struct cx25840_state*) ;
 struct cx25840_state* to_state (int ) ;

__attribute__((used)) static int cx25840_set_audclk_freq(struct i2c_client *client, u32 freq)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));

 if (state->aud_input != CX25840_AUDIO_SERIAL) {
  switch (freq) {
  case 32000:




   cx25840_write4(client, 0x108, 0x1006040f);
   cx25840_write4(client, 0x110, 0x01bb39ee);





   cx25840_write(client, 0x127, 0x50);

   if (is_cx2583x(state))
    break;



   cx25840_write4(client, 0x900, 0x0801f77f);
   cx25840_write4(client, 0x904, 0x0801f77f);
   cx25840_write4(client, 0x90c, 0x0801f77f);
   break;

  case 44100:




   cx25840_write4(client, 0x108, 0x1009040f);
   cx25840_write4(client, 0x110, 0x00ec6bd6);





   cx25840_write(client, 0x127, 0x50);

   if (is_cx2583x(state))
    break;



   cx25840_write4(client, 0x900, 0x08016d59);
   cx25840_write4(client, 0x904, 0x08016d59);
   cx25840_write4(client, 0x90c, 0x08016d59);
   break;

  case 48000:




   cx25840_write4(client, 0x108, 0x100a040f);
   cx25840_write4(client, 0x110, 0x0098d6e5);





   cx25840_write(client, 0x127, 0x50);

   if (is_cx2583x(state))
    break;



   cx25840_write4(client, 0x900, 0x08014faa);
   cx25840_write4(client, 0x904, 0x08014faa);
   cx25840_write4(client, 0x90c, 0x08014faa);
   break;
  }
 } else {
  switch (freq) {
  case 32000:




   cx25840_write4(client, 0x108, 0x1e08040f);
   cx25840_write4(client, 0x110, 0x012a0869);





   cx25840_write(client, 0x127, 0x54);

   if (is_cx2583x(state))
    break;



   cx25840_write4(client, 0x8f8, 0x08010000);



   cx25840_write4(client, 0x900, 0x08020000);
   cx25840_write4(client, 0x904, 0x08020000);
   cx25840_write4(client, 0x90c, 0x08020000);
   break;

  case 44100:




   cx25840_write4(client, 0x108, 0x1809040f);
   cx25840_write4(client, 0x110, 0x00ec6bd6);





   cx25840_write(client, 0x127, 0x50);

   if (is_cx2583x(state))
    break;



   cx25840_write4(client, 0x8f8, 0x080160cd);



   cx25840_write4(client, 0x900, 0x08017385);
   cx25840_write4(client, 0x904, 0x08017385);
   cx25840_write4(client, 0x90c, 0x08017385);
   break;

  case 48000:




   cx25840_write4(client, 0x108, 0x180a040f);
   cx25840_write4(client, 0x110, 0x0098d6e5);





   cx25840_write(client, 0x127, 0x50);

   if (is_cx2583x(state))
    break;



   cx25840_write4(client, 0x8f8, 0x08018000);



   cx25840_write4(client, 0x900, 0x08015555);
   cx25840_write4(client, 0x904, 0x08015555);
   cx25840_write4(client, 0x90c, 0x08015555);
   break;
  }
 }

 state->audclk_freq = freq;

 return 0;
}
