
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct tw2804 {int channel; int sd; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int TW2804_REG_AUTOGAIN ;
 int TW2804_REG_BLUE_BALANCE ;
 int TW2804_REG_BRIGHTNESS ;
 int TW2804_REG_CHROMA_GAIN ;
 int TW2804_REG_COLOR_KILLER ;
 int TW2804_REG_CONTRAST ;
 int TW2804_REG_GAIN ;
 int TW2804_REG_HUE ;
 int TW2804_REG_RED_BALANCE ;
 int TW2804_REG_SATURATION ;
 int read_reg (struct i2c_client*,int,int ) ;
 struct tw2804* to_state_from_ctrl (struct v4l2_ctrl*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;
 int write_reg (struct i2c_client*,int,int,int ) ;

__attribute__((used)) static int tw2804_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct tw2804 *state = to_state_from_ctrl(ctrl);
 struct i2c_client *client = v4l2_get_subdevdata(&state->sd);
 int addr;
 int reg;

 switch (ctrl->id) {
 case 137:
  addr = TW2804_REG_AUTOGAIN;
  reg = read_reg(client, addr, state->channel);
  if (reg < 0)
   return reg;
  if (ctrl->val == 0)
   reg &= ~(1 << 7);
  else
   reg |= 1 << 7;
  return write_reg(client, addr, reg, state->channel);

 case 133:
  addr = TW2804_REG_COLOR_KILLER;
  reg = read_reg(client, addr, state->channel);
  if (reg < 0)
   return reg;
  reg = (reg & ~(0x03)) | (ctrl->val == 0 ? 0x02 : 0x03);
  return write_reg(client, addr, reg, state->channel);

 case 131:
  return write_reg(client, TW2804_REG_GAIN, ctrl->val, 0);

 case 134:
  return write_reg(client, TW2804_REG_CHROMA_GAIN, ctrl->val, 0);

 case 136:
  return write_reg(client, TW2804_REG_BLUE_BALANCE, ctrl->val, 0);

 case 129:
  return write_reg(client, TW2804_REG_RED_BALANCE, ctrl->val, 0);

 case 135:
  return write_reg(client, TW2804_REG_BRIGHTNESS,
    ctrl->val, state->channel);

 case 132:
  return write_reg(client, TW2804_REG_CONTRAST,
    ctrl->val, state->channel);

 case 128:
  return write_reg(client, TW2804_REG_SATURATION,
    ctrl->val, state->channel);

 case 130:
  return write_reg(client, TW2804_REG_HUE,
    ctrl->val, state->channel);

 default:
  break;
 }
 return -EINVAL;
}
