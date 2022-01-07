
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv7842_state {int i2c_avlink; } ;


 int adv_smbus_read_byte_data (int ,int ) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline int avlink_read(struct v4l2_subdev *sd, u8 reg)
{
 struct adv7842_state *state = to_state(sd);

 return adv_smbus_read_byte_data(state->i2c_avlink, reg);
}
