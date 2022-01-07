
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mxl111sf_state {int dummy; } ;


 scalar_t__ IDAC_CURRENT_SINKING_BIT_MASK ;
 scalar_t__ IDAC_CURRENT_SINKING_ENABLE ;
 scalar_t__ IDAC_MANUAL_CONTROL ;
 scalar_t__ IDAC_MANUAL_CONTROL_BIT_MASK ;
 int V6_IDAC_HYSTERESIS_REG ;
 int V6_IDAC_SETTINGS_REG ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int ,scalar_t__) ;
 int mxl_fail (int) ;

int mxl111sf_idac_config(struct mxl111sf_state *state,
    u8 control_mode, u8 current_setting,
    u8 current_value, u8 hysteresis_value)
{
 int ret;
 u8 val;

 val = current_value;

 if (control_mode == IDAC_MANUAL_CONTROL) {

  val |= IDAC_MANUAL_CONTROL_BIT_MASK;

  if (current_setting == IDAC_CURRENT_SINKING_ENABLE)

   val |= IDAC_CURRENT_SINKING_BIT_MASK;
  else

   val &= ~IDAC_CURRENT_SINKING_BIT_MASK;
 } else {

  val &= ~IDAC_MANUAL_CONTROL_BIT_MASK;


  ret = mxl111sf_write_reg(state, V6_IDAC_HYSTERESIS_REG,
      (hysteresis_value & 0x3F));
  mxl_fail(ret);
 }

 ret = mxl111sf_write_reg(state, V6_IDAC_SETTINGS_REG, val);
 mxl_fail(ret);

 return ret;
}
