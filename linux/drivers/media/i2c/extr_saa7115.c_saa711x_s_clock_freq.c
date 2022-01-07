
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {int std; int cgcdiv; int double_asclk; int audclk_freq; scalar_t__ apll; scalar_t__ ucgc; int crystal_freq; int ident; } ;


 int EINVAL ;
 scalar_t__ R_30_AUD_MAST_CLK_CYCLES_PER_FIELD ;
 scalar_t__ R_34_AUD_MAST_CLK_NOMINAL_INC ;
 scalar_t__ R_38_CLK_RATIO_AMXCLK_TO_ASCLK ;
 scalar_t__ R_39_CLK_RATIO_ASCLK_TO_ALRCLK ;
 scalar_t__ R_3A_AUD_CLK_GEN_BASIC_SETUP ;
 int V4L2_STD_525_60 ;
 int debug ;
 int do_div (int,int ) ;
 int saa711x_has_reg (int ,scalar_t__) ;
 int saa711x_write (struct v4l2_subdev*,scalar_t__,int) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int saa711x_s_clock_freq(struct v4l2_subdev *sd, u32 freq)
{
 struct saa711x_state *state = to_state(sd);
 u32 acpf;
 u32 acni;
 u32 hz;
 u64 f;
 u8 acc = 0;


 if (!saa711x_has_reg(state->ident, R_30_AUD_MAST_CLK_CYCLES_PER_FIELD))
  return 0;

 v4l2_dbg(1, debug, sd, "set audio clock freq: %d\n", freq);


 if (freq < 32000 || freq > 48000)
  return -EINVAL;


 hz = (state->std & V4L2_STD_525_60) ? 5994 : 5000;

 acpf = (25600 * freq) / hz;



 f = freq;
 f = f << 31;
 do_div(f, state->crystal_freq);
 acni = f;
 if (state->ucgc) {
  acpf = acpf * state->cgcdiv / 16;
  acni = acni * state->cgcdiv / 16;
  acc = 0x80;
  if (state->cgcdiv == 3)
   acc |= 0x40;
 }
 if (state->apll)
  acc |= 0x08;

 if (state->double_asclk) {
  acpf <<= 1;
  acni <<= 1;
 }
 saa711x_write(sd, R_38_CLK_RATIO_AMXCLK_TO_ASCLK, 0x03);
 saa711x_write(sd, R_39_CLK_RATIO_ASCLK_TO_ALRCLK, 0x10 << state->double_asclk);
 saa711x_write(sd, R_3A_AUD_CLK_GEN_BASIC_SETUP, acc);

 saa711x_write(sd, R_30_AUD_MAST_CLK_CYCLES_PER_FIELD, acpf & 0xff);
 saa711x_write(sd, R_30_AUD_MAST_CLK_CYCLES_PER_FIELD+1,
       (acpf >> 8) & 0xff);
 saa711x_write(sd, R_30_AUD_MAST_CLK_CYCLES_PER_FIELD+2,
       (acpf >> 16) & 0x03);

 saa711x_write(sd, R_34_AUD_MAST_CLK_NOMINAL_INC, acni & 0xff);
 saa711x_write(sd, R_34_AUD_MAST_CLK_NOMINAL_INC+1, (acni >> 8) & 0xff);
 saa711x_write(sd, R_34_AUD_MAST_CLK_NOMINAL_INC+2, (acni >> 16) & 0x3f);
 state->audclk_freq = freq;
 return 0;
}
