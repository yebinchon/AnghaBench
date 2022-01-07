
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sony_btf_mpx {int mpxmode; int audmode; int sd; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct TYPE_2__ {scalar_t__ audio_mode; int source; int modus; int acb; int fm_prescale; int nicam_prescale; int scart_prescale; int system; int volume; } ;



 scalar_t__ AUD_MONO ;


 scalar_t__ I2C_M_RD ;




 int i2c_transfer (int ,struct i2c_msg*,int) ;
 TYPE_1__* mpx_audio_modes ;
 int mpx_write (struct i2c_client*,int,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;
 int v4l2_info (struct i2c_client*,char*,int,int,...) ;

__attribute__((used)) static int mpx_setup(struct sony_btf_mpx *t)
{
 struct i2c_client *client = v4l2_get_subdevdata(&t->sd);
 u16 source = 0;
 u8 buffer[3];
 struct i2c_msg msg;
 int mode = t->mpxmode;


 buffer[0] = 0x00;
 buffer[1] = 0x80;
 buffer[2] = 0x00;
 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = 3;
 msg.buf = buffer;
 i2c_transfer(client->adapter, &msg, 1);
 buffer[1] = 0x00;
 i2c_transfer(client->adapter, &msg, 1);

 if (t->audmode != 129)
  mode++;

 if (mpx_audio_modes[mode].audio_mode != AUD_MONO) {
  switch (t->audmode) {
  case 129:
   switch (mpx_audio_modes[mode].audio_mode) {
   case 134:
    source = mpx_audio_modes[mode].source;
    break;
   case 133:
    source = 0x0000;
    break;
   case 132:
    source = 0x0200;
    break;
   default:
    break;
   }
   break;
  case 128:
   source = mpx_audio_modes[mode].source;
   break;
  case 131:
   source = 0x0300;
   break;
  case 130:
   source = 0x0400;
   break;
  }
  source |= mpx_audio_modes[mode].source & 0x00ff;
 } else
  source = mpx_audio_modes[mode].source;

 mpx_write(client, 0x10, 0x0030, mpx_audio_modes[mode].modus);
 mpx_write(client, 0x12, 0x0008, source);
 mpx_write(client, 0x12, 0x0013, mpx_audio_modes[mode].acb);
 mpx_write(client, 0x12, 0x000e,
   mpx_audio_modes[mode].fm_prescale);
 mpx_write(client, 0x12, 0x0010,
   mpx_audio_modes[mode].nicam_prescale);
 mpx_write(client, 0x12, 0x000d,
   mpx_audio_modes[mode].scart_prescale);
 mpx_write(client, 0x10, 0x0020, mpx_audio_modes[mode].system);
 mpx_write(client, 0x12, 0x0000, mpx_audio_modes[mode].volume);
 if (mpx_audio_modes[mode].audio_mode == 134)
  mpx_write(client, 0x10, 0x0022,
   t->audmode == 129 ? 0x07f0 : 0x0190);
 return 0;
}
