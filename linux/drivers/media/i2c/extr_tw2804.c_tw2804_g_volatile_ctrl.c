
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; void* val; } ;
struct tw2804 {int sd; } ;
struct i2c_client {int dummy; } ;


 int TW2804_REG_BLUE_BALANCE ;
 int TW2804_REG_CHROMA_GAIN ;
 int TW2804_REG_GAIN ;
 int TW2804_REG_RED_BALANCE ;




 void* read_reg (struct i2c_client*,int ,int ) ;
 struct tw2804* to_state_from_ctrl (struct v4l2_ctrl*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int tw2804_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct tw2804 *state = to_state_from_ctrl(ctrl);
 struct i2c_client *client = v4l2_get_subdevdata(&state->sd);

 switch (ctrl->id) {
 case 129:
  ctrl->val = read_reg(client, TW2804_REG_GAIN, 0);
  return 0;

 case 130:
  ctrl->val = read_reg(client, TW2804_REG_CHROMA_GAIN, 0);
  return 0;

 case 131:
  ctrl->val = read_reg(client, TW2804_REG_BLUE_BALANCE, 0);
  return 0;

 case 128:
  ctrl->val = read_reg(client, TW2804_REG_RED_BALANCE, 0);
  return 0;
 }
 return 0;
}
