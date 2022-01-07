
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hermes {int dummy; } ;


 int EBUSY ;
 int HERMES_AUX_DISABLE ;
 int HERMES_AUX_DISABLED ;
 int HERMES_AUX_ENABLE ;
 int HERMES_AUX_ENABLED ;
 int HERMES_AUX_PW0 ;
 int HERMES_AUX_PW1 ;
 int HERMES_AUX_PW2 ;
 int HERMES_CONTROL ;
 int HERMES_PARAM0 ;
 int HERMES_PARAM1 ;
 int HERMES_PARAM2 ;
 int hermes_read_reg (struct hermes*,int ) ;
 int hermes_write_reg (struct hermes*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static inline int
hermes_aux_control(struct hermes *hw, int enabled)
{
 int desired_state = enabled ? HERMES_AUX_ENABLED : HERMES_AUX_DISABLED;
 int action = enabled ? HERMES_AUX_ENABLE : HERMES_AUX_DISABLE;
 int i;


 if (hermes_read_reg(hw, HERMES_CONTROL) == desired_state)
  return 0;

 hermes_write_reg(hw, HERMES_PARAM0, HERMES_AUX_PW0);
 hermes_write_reg(hw, HERMES_PARAM1, HERMES_AUX_PW1);
 hermes_write_reg(hw, HERMES_PARAM2, HERMES_AUX_PW2);
 hermes_write_reg(hw, HERMES_CONTROL, action);

 for (i = 0; i < 20; i++) {
  udelay(10);
  if (hermes_read_reg(hw, HERMES_CONTROL) ==
      desired_state)
   return 0;
 }

 return -EBUSY;
}
