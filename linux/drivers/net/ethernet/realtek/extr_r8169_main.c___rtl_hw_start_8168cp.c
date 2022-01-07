
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int Beacon_en ;
 int Config1 ;
 int Config3 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int Speed_down ;
 int rtl_disable_clock_request (struct rtl8169_private*) ;

__attribute__((used)) static void __rtl_hw_start_8168cp(struct rtl8169_private *tp)
{
 RTL_W8(tp, Config1, RTL_R8(tp, Config1) | Speed_down);

 RTL_W8(tp, Config3, RTL_R8(tp, Config3) & ~Beacon_en);

 rtl_disable_clock_request(tp);
}
