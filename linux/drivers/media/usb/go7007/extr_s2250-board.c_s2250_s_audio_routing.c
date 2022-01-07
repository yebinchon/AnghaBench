
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct s2250 {int audio_input; int audio; } ;


 int EINVAL ;
 struct s2250* to_state (struct v4l2_subdev*) ;
 int write_reg (int ,int,int) ;

__attribute__((used)) static int s2250_s_audio_routing(struct v4l2_subdev *sd, u32 input, u32 output,
     u32 config)
{
 struct s2250 *state = to_state(sd);

 switch (input) {
 case 0:
  write_reg(state->audio, 0x08, 0x02);
  break;
 case 1:
  write_reg(state->audio, 0x08, 0x04);
  break;
 case 2:
  write_reg(state->audio, 0x08, 0x05);
  break;
 default:
  return -EINVAL;
 }
 state->audio_input = input;
 return 0;
}
