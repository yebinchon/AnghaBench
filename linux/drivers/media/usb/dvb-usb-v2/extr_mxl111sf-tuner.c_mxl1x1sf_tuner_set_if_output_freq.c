
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mxl111sf_tuner_state {int if_freq; TYPE_1__* cfg; } ;
struct TYPE_2__ {int invert_spectrum; int if_freq; } ;


 int MXL_IF_HI ;
 int MXL_IF_LO ;
 int V6_TUNER_IF_FCW_BYP_REG ;
 int V6_TUNER_IF_FCW_REG ;
 int V6_TUNER_IF_SEL_REG ;
 int mxl111sf_tuner_read_reg (struct mxl111sf_tuner_state*,int ,int*) ;
 int mxl111sf_tuner_write_reg (struct mxl111sf_tuner_state*,int ,int) ;
 int mxl_dbg (char*,int,int) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl1x1sf_tuner_set_if_output_freq(struct mxl111sf_tuner_state *state)
{
 int ret;
 u8 ctrl;




 mxl_dbg("(IF polarity = %d, IF freq = 0x%02x)",
  state->cfg->invert_spectrum, state->cfg->if_freq);


 ctrl = state->cfg->invert_spectrum;

 ctrl |= state->cfg->if_freq;

 ret = mxl111sf_tuner_write_reg(state, V6_TUNER_IF_SEL_REG, ctrl);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_tuner_read_reg(state, V6_TUNER_IF_FCW_BYP_REG, &ctrl);
 if (mxl_fail(ret))
  goto fail;

 ctrl &= 0xf0;
 ctrl |= 0x90;

 ret = mxl111sf_tuner_write_reg(state, V6_TUNER_IF_FCW_BYP_REG, ctrl);
 if (mxl_fail(ret))
  goto fail;




 ret = mxl111sf_tuner_write_reg(state, V6_TUNER_IF_FCW_REG, ctrl);
 if (mxl_fail(ret))
  goto fail;

 state->if_freq = state->cfg->if_freq;
fail:
 return ret;
}
