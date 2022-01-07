
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl5007t_state {int tab_init_cable; int tab_init; } ;
typedef int s32 ;
typedef enum mxl5007t_mode { ____Placeholder_mxl5007t_mode } mxl5007t_mode ;


 int EINVAL ;




 int mxl_fail (int ) ;
 int set_reg_bits (int ,int,int,int) ;

__attribute__((used)) static void mxl5007t_set_mode_bits(struct mxl5007t_state *state,
       enum mxl5007t_mode mode,
       s32 if_diff_out_level)
{
 switch (mode) {
 case 131:
  set_reg_bits(state->tab_init, 0x06, 0x1f, 0x12);
  break;
 case 129:
  set_reg_bits(state->tab_init, 0x06, 0x1f, 0x11);
  break;
 case 128:
  set_reg_bits(state->tab_init, 0x06, 0x1f, 0x10);
  break;
 case 130:
  set_reg_bits(state->tab_init_cable, 0x09, 0xff, 0xc1);
  set_reg_bits(state->tab_init_cable, 0x0a, 0xff,
        8 - if_diff_out_level);
  set_reg_bits(state->tab_init_cable, 0x0b, 0xff, 0x17);
  break;
 default:
  mxl_fail(-EINVAL);
 }
 return;
}
