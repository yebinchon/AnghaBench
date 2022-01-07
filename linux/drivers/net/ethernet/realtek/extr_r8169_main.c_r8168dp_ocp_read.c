
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int OCPAR ;
 int OCPDR ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_ocpar_cond ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static u32 r8168dp_ocp_read(struct rtl8169_private *tp, u8 mask, u16 reg)
{
 RTL_W32(tp, OCPAR, ((u32)mask & 0x0f) << 12 | (reg & 0x0fff));
 return rtl_udelay_loop_wait_high(tp, &rtl_ocpar_cond, 100, 20) ?
  RTL_R32(tp, OCPDR) : ~0;
}
