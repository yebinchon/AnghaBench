
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7706h_state {int muted; } ;


 int SAA7706H_CTRL_PC_RESET_DSP1 ;
 int SAA7706H_CTRL_PC_RESET_DSP2 ;
 int SAA7706H_CTRL_PLL3_62975MHZ ;
 int SAA7706H_REG_CTRL ;
 int saa7706h_set_reg16 (struct v4l2_subdev*,int ,int) ;
 struct saa7706h_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7706h_mute(struct v4l2_subdev *sd)
{
 struct saa7706h_state *state = to_state(sd);
 int err;

 err = saa7706h_set_reg16(sd, SAA7706H_REG_CTRL,
  SAA7706H_CTRL_PLL3_62975MHZ | SAA7706H_CTRL_PC_RESET_DSP1 |
  SAA7706H_CTRL_PC_RESET_DSP2);
 if (!err)
  state->muted = 1;
 return err;
}
