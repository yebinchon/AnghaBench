
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct s5k5baf {int error; int sd; } ;
struct i2c_client {int dummy; } ;


 int debug ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 int v4l2_dbg (int,int ,struct i2c_client*,char*,int,int) ;
 int v4l2_err (struct i2c_client*,char*,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void s5k5baf_i2c_write(struct s5k5baf *state, u16 addr, u16 val)
{
 u8 buf[4] = { addr >> 8, addr & 0xFF, val >> 8, val & 0xFF };
 struct i2c_client *c = v4l2_get_subdevdata(&state->sd);
 int ret;

 if (state->error)
  return;

 ret = i2c_master_send(c, buf, 4);
 v4l2_dbg(3, debug, c, "i2c_write: 0x%04x : 0x%04x\n", addr, val);

 if (ret != 4) {
  v4l2_err(c, "i2c_write: error during transfer (%d)\n", ret);
  state->error = ret;
 }
}
