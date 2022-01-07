
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl5007t_state {int tab_rftune; } ;
typedef enum mxl5007t_bw_mhz { ____Placeholder_mxl5007t_bw_mhz } mxl5007t_bw_mhz ;


 int EINVAL ;



 int mxl_fail (int ) ;
 int set_reg_bits (int ,int,int,int) ;

__attribute__((used)) static void mxl5007t_set_bw_bits(struct mxl5007t_state *state,
     enum mxl5007t_bw_mhz bw)
{
 u8 val;

 switch (bw) {
 case 130:
  val = 0x15;

  break;
 case 129:
  val = 0x2a;
  break;
 case 128:
  val = 0x3f;
  break;
 default:
  mxl_fail(-EINVAL);
  return;
 }
 set_reg_bits(state->tab_rftune, 0x0c, 0x3f, val);

 return;
}
