
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mxl111sf_tuner_state {TYPE_1__* cfg; } ;
struct mxl111sf_reg_ctrl_info {int dummy; } ;
struct dvb_frontend {struct mxl111sf_tuner_state* tuner_priv; } ;
struct TYPE_2__ {int (* ant_hunt ) (struct dvb_frontend*) ;} ;


 int EINVAL ;
 int MXL_DEV_MODE_MASK ;
 int MXL_MODE_REG ;
 int MXL_TUNER_MODE ;
 int START_TUNE_REG ;
 struct mxl111sf_reg_ctrl_info* mxl111sf_calc_phy_tune_regs (int ,int) ;
 int mxl111sf_tuner_program_regs (struct mxl111sf_tuner_state*,struct mxl111sf_reg_ctrl_info*) ;
 int mxl111sf_tuner_read_reg (struct mxl111sf_tuner_state*,int ,int*) ;
 int mxl111sf_tuner_write_reg (struct mxl111sf_tuner_state*,int ,int) ;
 int mxl1x1sf_tuner_set_if_output_freq (struct mxl111sf_tuner_state*) ;
 int mxl1x1sf_tuner_top_master_ctrl (struct mxl111sf_tuner_state*,int) ;
 int mxl_dbg (char*,int ,int) ;
 scalar_t__ mxl_fail (int) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int mxl1x1sf_tune_rf(struct dvb_frontend *fe, u32 freq, u8 bw)
{
 struct mxl111sf_tuner_state *state = fe->tuner_priv;
 static struct mxl111sf_reg_ctrl_info *reg_ctrl_array;
 int ret;
 u8 mxl_mode;

 mxl_dbg("(freq = %d, bw = 0x%x)", freq, bw);


 ret = mxl111sf_tuner_write_reg(state, START_TUNE_REG, 0);
 if (mxl_fail(ret))
  goto fail;


 ret = mxl111sf_tuner_read_reg(state, MXL_MODE_REG, &mxl_mode);
 if (mxl_fail(ret))
  goto fail;


 reg_ctrl_array = mxl111sf_calc_phy_tune_regs(freq, bw);
 if (!reg_ctrl_array)
  return -EINVAL;

 ret = mxl111sf_tuner_program_regs(state, reg_ctrl_array);
 if (mxl_fail(ret))
  goto fail;

 if ((mxl_mode & MXL_DEV_MODE_MASK) == MXL_TUNER_MODE) {

  mxl1x1sf_tuner_top_master_ctrl(state, 0);
  mxl1x1sf_tuner_top_master_ctrl(state, 1);
  mxl1x1sf_tuner_set_if_output_freq(state);
 }

 ret = mxl111sf_tuner_write_reg(state, START_TUNE_REG, 1);
 if (mxl_fail(ret))
  goto fail;

 if (state->cfg->ant_hunt)
  state->cfg->ant_hunt(fe);
fail:
 return ret;
}
