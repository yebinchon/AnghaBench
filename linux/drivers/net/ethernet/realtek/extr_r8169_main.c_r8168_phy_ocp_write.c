
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int GPHY_OCP ;
 int OCPAR_FLAG ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_ocp_gphy_cond ;
 scalar_t__ rtl_ocp_reg_failure (struct rtl8169_private*,int) ;
 int rtl_udelay_loop_wait_low (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static void r8168_phy_ocp_write(struct rtl8169_private *tp, u32 reg, u32 data)
{
 if (rtl_ocp_reg_failure(tp, reg))
  return;

 RTL_W32(tp, GPHY_OCP, OCPAR_FLAG | (reg << 15) | data);

 rtl_udelay_loop_wait_low(tp, &rtl_ocp_gphy_cond, 25, 10);
}
