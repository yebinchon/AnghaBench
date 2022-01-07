
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {struct v4l2_subdev sd; } ;


 int OF_VP_ENABLE ;
 int PON_DIS ;
 int PON_EN ;
 int REG_CFG1 ;
 int REG_DEEP_PLL7_BYP ;
 int REG_OF ;
 int REG_PON_OVR_EN ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static void
tda1997x_power_mode(struct tda1997x_state *state, bool enable)
{
 struct v4l2_subdev *sd = &state->sd;
 u8 reg;

 if (enable) {

  io_write(sd, REG_PON_OVR_EN, PON_DIS);

  io_write(sd, REG_CFG1, PON_EN);

  io_write(sd, REG_DEEP_PLL7_BYP, PON_DIS);

  reg = io_read(sd, REG_OF);
  reg &= ~OF_VP_ENABLE;
  io_write(sd, REG_OF, reg);
 } else {


  reg = io_read(sd, REG_OF);
  reg |= OF_VP_ENABLE;
  io_write(sd, REG_OF, reg);

  io_write(sd, REG_DEEP_PLL7_BYP, PON_EN);

  io_write(sd, REG_CFG1, PON_DIS);

  io_write(sd, REG_PON_OVR_EN, PON_EN);
 }
}
