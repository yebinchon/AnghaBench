
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int version; } ;






 int r8153_mac_clk_spd (struct r8152*,int) ;
 int r8153_u1u2en (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int rtl_runtime_suspend_enable (struct r8152*,int) ;

__attribute__((used)) static void rtl8153_runtime_enable(struct r8152 *tp, bool enable)
{
 if (enable) {
  r8153_u1u2en(tp, 0);
  r8153_u2p3en(tp, 0);
  r8153_mac_clk_spd(tp, 1);
  rtl_runtime_suspend_enable(tp, 1);
 } else {
  rtl_runtime_suspend_enable(tp, 0);
  r8153_mac_clk_spd(tp, 0);

  switch (tp->version) {
  case 131:
  case 130:
   break;
  case 129:
  case 128:
  default:
   r8153_u2p3en(tp, 1);
   break;
  }

  r8153_u1u2en(tp, 1);
 }
}
