
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int OCPDR ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 scalar_t__ rtl_ocp_reg_failure (struct rtl8169_private*,int) ;

__attribute__((used)) static u16 r8168_mac_ocp_read(struct rtl8169_private *tp, u32 reg)
{
 if (rtl_ocp_reg_failure(tp, reg))
  return 0;

 RTL_W32(tp, OCPDR, reg << 15);

 return RTL_R32(tp, OCPDR);
}
