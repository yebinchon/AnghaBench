
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int __rtl_hw_start_8168cp (struct rtl8169_private*) ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168c_4(struct rtl8169_private *tp)
{
 rtl_set_def_aspm_entry_latency(tp);

 __rtl_hw_start_8168cp(tp);
}
