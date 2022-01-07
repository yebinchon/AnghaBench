
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv7511_state {int i2c_pktmem; } ;


 int adv_smbus_read_byte_data (int ,int ) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7511_pktmem_rd(struct v4l2_subdev *sd, u8 reg)
{
 struct adv7511_state *state = get_adv7511_state(sd);

 return adv_smbus_read_byte_data(state->i2c_pktmem, reg);
}
