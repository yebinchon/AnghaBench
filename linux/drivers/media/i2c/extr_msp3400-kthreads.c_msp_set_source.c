
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct msp_state {scalar_t__ has_scart2_out; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ msp_dolby ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static void msp_set_source(struct i2c_client *client, u16 src)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (msp_dolby) {
  msp_write_dsp(client, 0x0008, 0x0520);
  msp_write_dsp(client, 0x0009, 0x0620);
 } else {
  msp_write_dsp(client, 0x0008, src);
  msp_write_dsp(client, 0x0009, src);
 }
 msp_write_dsp(client, 0x000a, src);
 msp_write_dsp(client, 0x000b, src);
 msp_write_dsp(client, 0x000c, src);
 if (state->has_scart2_out)
  msp_write_dsp(client, 0x0041, src);
}
