
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {struct v4l2_subdev sd; } ;


 int CLK_CFG_DIS ;
 int CLK_CFG_SEL_ACLK ;
 int CLK_CFG_SEL_ACLK_EN ;
 int PON_DIS ;
 int PON_EN ;
 int REG_CLK_CFG ;
 int REG_MODE_REC_CFG1 ;
 int REG_PON_CBIAS ;
 int REG_PON_OVR_EN ;
 int REG_PON_PLL ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static void tda1997x_reset_n1(struct tda1997x_state *state)
{
 struct v4l2_subdev *sd = &state->sd;
 u8 reg;


 io_write(sd, REG_CLK_CFG, CLK_CFG_SEL_ACLK_EN | CLK_CFG_SEL_ACLK);
 io_write(sd, REG_PON_OVR_EN, PON_EN);
 io_write(sd, REG_PON_CBIAS, PON_EN);
 io_write(sd, REG_PON_PLL, PON_EN);

 reg = io_read(sd, REG_MODE_REC_CFG1);
 reg &= ~0x06;
 reg |= 0x02;
 io_write(sd, REG_MODE_REC_CFG1, reg);
 io_write(sd, REG_CLK_CFG, CLK_CFG_DIS);
 io_write(sd, REG_PON_OVR_EN, PON_DIS);
 reg = io_read(sd, REG_MODE_REC_CFG1);
 reg &= ~0x06;
 io_write(sd, REG_MODE_REC_CFG1, reg);
}
