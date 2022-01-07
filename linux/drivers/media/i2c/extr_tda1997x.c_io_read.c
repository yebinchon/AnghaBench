
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int page_lock; int client; } ;


 int i2c_smbus_read_byte_data (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ tda1997x_setpage (struct v4l2_subdev*,int) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l_err (int ,char*,int) ;

__attribute__((used)) static inline int io_read(struct v4l2_subdev *sd, u16 reg)
{
 struct tda1997x_state *state = to_state(sd);
 int val;

 mutex_lock(&state->page_lock);
 if (tda1997x_setpage(sd, reg >> 8)) {
  val = -1;
  goto out;
 }

 val = i2c_smbus_read_byte_data(state->client, reg&0xff);
 if (val < 0) {
  v4l_err(state->client, "read reg error: reg=%2x\n", reg & 0xff);
  val = -1;
  goto out;
 }

out:
 mutex_unlock(&state->page_lock);
 return val;
}
