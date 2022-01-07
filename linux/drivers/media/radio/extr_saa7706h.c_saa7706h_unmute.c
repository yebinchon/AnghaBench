
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7706h_state {scalar_t__ muted; } ;


 int SAA7706H_CL_GEN2_WSEDGE_FALLING ;
 int SAA7706H_CTRL_PC_RESET_DSP1 ;
 int SAA7706H_CTRL_PC_RESET_DSP2 ;
 int SAA7706H_CTRL_PLL3_62975MHZ ;
 int SAA7706H_DSP1_MOD0 ;
 int SAA7706H_DSP1_MODPNTR ;
 int SAA7706H_DSP2_MPTR0 ;
 int SAA7706H_DSP2_XMEM_BUSAMP ;
 int SAA7706H_DSP2_XMEM_CONTLLCW ;
 int SAA7706H_DSP2_XMEM_FDACPNTR ;
 int SAA7706H_DSP2_XMEM_IIS1PNTR ;
 int SAA7706H_DSP2_YMEM_PVAT ;
 int SAA7706H_DSP2_YMEM_PVAT1 ;
 int SAA7706H_DSP2_YMEM_PVGA ;
 int SAA7706H_REG_CLK_COEFF ;
 int SAA7706H_REG_CLK_SET ;
 int SAA7706H_REG_CL_GEN1 ;
 int SAA7706H_REG_CL_GEN2 ;
 int SAA7706H_REG_CL_GEN4 ;
 int SAA7706H_REG_CTRL ;
 int SAA7706H_REG_EVALUATION ;
 int SAA7706H_REG_IAC ;
 int SAA7706H_REG_INPUT_SENS ;
 int SAA7706H_REG_IO_CONF_DSP2 ;
 int SAA7706H_REG_PC_DSP2 ;
 int SAA7706H_REG_PHONE_NAV_AUDIO ;
 int SAA7706H_REG_SEL ;
 int SAA7706H_REG_STATUS_DSP2 ;
 int msleep (int) ;
 int saa7706h_set_reg16_err (struct v4l2_subdev*,int ,int,int*) ;
 int saa7706h_set_reg24_err (struct v4l2_subdev*,int ,int,int*) ;
 struct saa7706h_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7706h_unmute(struct v4l2_subdev *sd)
{
 struct saa7706h_state *state = to_state(sd);
 int err = 0;

 err = saa7706h_set_reg16_err(sd, SAA7706H_REG_CTRL,
  SAA7706H_CTRL_PLL3_62975MHZ | SAA7706H_CTRL_PC_RESET_DSP1 |
  SAA7706H_CTRL_PC_RESET_DSP2, &err);


 msleep(1);

 err = saa7706h_set_reg16_err(sd, SAA7706H_REG_CTRL,
  SAA7706H_CTRL_PLL3_62975MHZ, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_EVALUATION, 0, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_CL_GEN1, 0x040022, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_CL_GEN2,
  SAA7706H_CL_GEN2_WSEDGE_FALLING, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_CL_GEN4, 0x024080, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_SEL, 0x200080, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_IAC, 0xf4caed, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_CLK_SET, 0x124334, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_CLK_COEFF, 0x004a1a,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_INPUT_SENS, 0x0071c7,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_PHONE_NAV_AUDIO,
  0x0e22ff, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_IO_CONF_DSP2, 0x001ff8,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_STATUS_DSP2, 0x080003,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_REG_PC_DSP2, 0x000004, &err);

 err = saa7706h_set_reg16_err(sd, SAA7706H_DSP1_MOD0, 0x0c6c, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_MPTR0, 0x000b4b, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP1_MODPNTR, 0x000600, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP1_MODPNTR, 0x0000c0, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_XMEM_CONTLLCW, 0x000819,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_XMEM_CONTLLCW, 0x00085a,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_XMEM_BUSAMP, 0x7fffff,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_XMEM_FDACPNTR, 0x2000cb,
  &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_XMEM_IIS1PNTR, 0x2000cb,
  &err);

 err = saa7706h_set_reg16_err(sd, SAA7706H_DSP2_YMEM_PVGA, 0x0f80, &err);

 err = saa7706h_set_reg16_err(sd, SAA7706H_DSP2_YMEM_PVAT1, 0x0800,
  &err);

 err = saa7706h_set_reg16_err(sd, SAA7706H_DSP2_YMEM_PVAT, 0x0800, &err);

 err = saa7706h_set_reg24_err(sd, SAA7706H_DSP2_XMEM_CONTLLCW, 0x000905,
  &err);
 if (!err)
  state->muted = 0;
 return err;
}
