
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dst_state {int i2c; TYPE_1__* config; } ;
struct TYPE_2__ {int demod_address; } ;


 int dprintk (int,char*,...) ;
 int dst_error_bailout (struct dst_state*) ;
 int dst_error_recovery (struct dst_state*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

int write_dst(struct dst_state *state, u8 *data, u8 len)
{
 struct i2c_msg msg = {
  .addr = state->config->demod_address,
  .flags = 0,
  .buf = data,
  .len = len
 };

 int err;
 u8 cnt;

 dprintk(1, "writing [ %*ph ]\n", len, data);

 for (cnt = 0; cnt < 2; cnt++) {
  if ((err = i2c_transfer(state->i2c, &msg, 1)) < 0) {
   dprintk(2, "_write_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)\n",
    err, len, data[0]);
   dst_error_recovery(state);
   continue;
  } else
   break;
 }
 if (cnt >= 2) {
  dprintk(2, "RDC 8820 RESET\n");
  dst_error_bailout(state);

  return -1;
 }

 return 0;
}
