
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7183 {scalar_t__ input; scalar_t__ output; } ;
 int ADV7183_IN_CTRL ;
 int ADV7183_OUT_CTRL ;



 int EINVAL ;
 int adv7183_read (struct v4l2_subdev*,int ) ;
 int adv7183_write (struct v4l2_subdev*,int ,int) ;
 struct adv7183* to_adv7183 (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7183_s_routing(struct v4l2_subdev *sd,
    u32 input, u32 output, u32 config)
{
 struct adv7183 *decoder = to_adv7183(sd);
 int reg;

 if ((input > 141) || (output > 143))
  return -EINVAL;

 if (input != decoder->input) {
  decoder->input = input;
  reg = adv7183_read(sd, ADV7183_IN_CTRL) & 0xF0;
  switch (input) {
  case 140:
   reg |= 0x1;
   break;
  case 138:
   reg |= 0x2;
   break;
  case 137:
   reg |= 0x3;
   break;
  case 136:
   reg |= 0x4;
   break;
  case 135:
   reg |= 0x5;
   break;
  case 134:
   reg |= 0xB;
   break;
  case 133:
   reg |= 0xC;
   break;
  case 132:
   reg |= 0xD;
   break;
  case 131:
   reg |= 0xE;
   break;
  case 139:
   reg |= 0xF;
   break;
  case 130:
   reg |= 0x6;
   break;
  case 129:
   reg |= 0x7;
   break;
  case 128:
   reg |= 0x8;
   break;
  case 142:
   reg |= 0x9;
   break;
  case 141:
   reg |= 0xA;
   break;
  default:
   break;
  }
  adv7183_write(sd, ADV7183_IN_CTRL, reg);
 }

 if (output != decoder->output) {
  decoder->output = output;
  reg = adv7183_read(sd, ADV7183_OUT_CTRL) & 0xC0;
  switch (output) {
  case 143:
   reg |= 0x9;
   break;
  default:
   reg |= 0xC;
   break;
  }
  adv7183_write(sd, ADV7183_OUT_CTRL, reg);
 }

 return 0;
}
