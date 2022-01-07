
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ aspm_manageable; } ;


 int ASPM_en ;
 int ClkReqEn ;
 int Config2 ;
 int Config5 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtl_hw_aspm_clkreq_enable(struct rtl8169_private *tp, bool enable)
{

 if (enable && tp->aspm_manageable) {
  RTL_W8(tp, Config5, RTL_R8(tp, Config5) | ASPM_en);
  RTL_W8(tp, Config2, RTL_R8(tp, Config2) | ClkReqEn);
 } else {
  RTL_W8(tp, Config2, RTL_R8(tp, Config2) & ~ClkReqEn);
  RTL_W8(tp, Config5, RTL_R8(tp, Config5) & ~ASPM_en);
 }

 udelay(10);
}
