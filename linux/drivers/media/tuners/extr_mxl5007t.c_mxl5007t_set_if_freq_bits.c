
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl5007t_state {int if_freq; int tab_init; } ;
typedef enum mxl5007t_if_freq { ____Placeholder_mxl5007t_if_freq } mxl5007t_if_freq ;


 int EINVAL ;
 int mxl_fail (int ) ;
 int set_reg_bits (int ,int,int,int) ;

__attribute__((used)) static void mxl5007t_set_if_freq_bits(struct mxl5007t_state *state,
          enum mxl5007t_if_freq if_freq,
          int invert_if)
{
 u8 val;

 switch (if_freq) {
 case 133:
  val = 0x00;
  break;
 case 134:
  val = 0x02;
  break;
 case 135:
  val = 0x03;
  break;
 case 131:
  val = 0x04;
  break;
 case 132:
  val = 0x05;
  break;
 case 129:
  val = 0x06;
  break;
 case 130:
  val = 0x07;
  break;
 case 128:
  val = 0x08;
  break;
 case 138:
  val = 0x09;
  break;
 case 137:
  val = 0x0a;
  break;
 case 136:
  val = 0x0b;
  break;
 default:
  mxl_fail(-EINVAL);
  return;
 }
 set_reg_bits(state->tab_init, 0x02, 0x0f, val);


 set_reg_bits(state->tab_init, 0x02, 0x10, invert_if ? 0x10 : 0x00);

 state->if_freq = if_freq;

 return;
}
