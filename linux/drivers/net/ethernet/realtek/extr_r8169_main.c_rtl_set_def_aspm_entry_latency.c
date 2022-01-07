
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int rtl_csi_access_enable (struct rtl8169_private*,int) ;

__attribute__((used)) static void rtl_set_def_aspm_entry_latency(struct rtl8169_private *tp)
{
 rtl_csi_access_enable(tp, 0x27);
}
