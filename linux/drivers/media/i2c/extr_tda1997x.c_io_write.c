
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int page_lock; int client; } ;
typedef int s32 ;


 int i2c_smbus_write_byte_data (int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ tda1997x_setpage (struct v4l2_subdev*,int) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l_err (int ,char*,int,int ) ;

__attribute__((used)) static int io_write(struct v4l2_subdev *sd, u16 reg, u8 val)
{
 struct tda1997x_state *state = to_state(sd);
 s32 ret = 0;

 mutex_lock(&state->page_lock);
 if (tda1997x_setpage(sd, reg >> 8)) {
  ret = -1;
  goto out;
 }

 ret = i2c_smbus_write_byte_data(state->client, reg & 0xff, val);
 if (ret < 0) {
  v4l_err(state->client, "write reg error:reg=%2x,val=%2x\n",
   reg&0xff, val);
  ret = -1;
  goto out;
 }

out:
 mutex_unlock(&state->page_lock);
 return ret;
}
