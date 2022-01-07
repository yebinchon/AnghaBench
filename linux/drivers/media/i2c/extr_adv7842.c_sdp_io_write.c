
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv7842_state {int i2c_sdp_io; } ;


 int adv_smbus_write_byte_data (int ,int ,int ) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline int sdp_io_write(struct v4l2_subdev *sd, u8 reg, u8 val)
{
 struct adv7842_state *state = to_state(sd);

 return adv_smbus_write_byte_data(state->i2c_sdp_io, reg, val);
}
