
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int ETIMEDOUT ;
 int GPHY_OCP ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_ocp_gphy_cond ;
 scalar_t__ rtl_ocp_reg_failure (struct rtl8169_private*,int) ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static int r8168_phy_ocp_read(struct rtl8169_private *tp, u32 reg)
{
 if (rtl_ocp_reg_failure(tp, reg))
  return 0;

 RTL_W32(tp, GPHY_OCP, reg << 15);

 return rtl_udelay_loop_wait_high(tp, &rtl_ocp_gphy_cond, 25, 10) ?
  (RTL_R32(tp, GPHY_OCP) & 0xffff) : -ETIMEDOUT;
}
