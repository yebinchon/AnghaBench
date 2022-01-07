
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int PCI_EXP_DEVCTL_READRQ_4096B ;
 int rtl_enable_clock_request (struct rtl8169_private*) ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;
 int rtl_tx_performance_tweak (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl_hw_start_8168d_4(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168d_4[] = {
  { 0x0b, 0x0000, 0x0048 },
  { 0x19, 0x0020, 0x0050 },
  { 0x0c, 0x0100, 0x0020 },
  { 0x10, 0x0004, 0x0000 },
 };

 rtl_set_def_aspm_entry_latency(tp);

 rtl_tx_performance_tweak(tp, PCI_EXP_DEVCTL_READRQ_4096B);

 rtl_ephy_init(tp, e_info_8168d_4);

 rtl_enable_clock_request(tp);
}
