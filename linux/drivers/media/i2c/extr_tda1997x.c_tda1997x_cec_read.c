
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int client; int client_cec; } ;


 int i2c_smbus_read_byte_data (int ,int ) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l_err (int ,char*,int ) ;

__attribute__((used)) static int tda1997x_cec_read(struct v4l2_subdev *sd, u8 reg)
{
 struct tda1997x_state *state = to_state(sd);
 int val;

 val = i2c_smbus_read_byte_data(state->client_cec, reg);
 if (val < 0) {
  v4l_err(state->client, "read reg error: reg=%2x\n", reg);
  val = -1;
 }

 return val;
}
