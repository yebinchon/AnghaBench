
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int Cfg9346 ;
 int Cfg9346_Lock ;
 int RTL_W8 (struct rtl8169_private*,int ,int ) ;

__attribute__((used)) static void rtl_lock_config_regs(struct rtl8169_private *tp)
{
 RTL_W8(tp, Cfg9346, Cfg9346_Lock);
}
