
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_hw_aspm_clkreq_enable (struct rtl8169_private*,int) ;
 int rtl_hw_start_8125_common (struct rtl8169_private*) ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8125_1(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8125_1[] = {
  { 0x01, 0xffff, 0xa812 },
  { 0x09, 0xffff, 0x520c },
  { 0x04, 0xffff, 0xd000 },
  { 0x0d, 0xffff, 0xf702 },
  { 0x0a, 0xffff, 0x8653 },
  { 0x06, 0xffff, 0x001e },
  { 0x08, 0xffff, 0x3595 },
  { 0x20, 0xffff, 0x9455 },
  { 0x21, 0xffff, 0x99ff },
  { 0x02, 0xffff, 0x6046 },
  { 0x29, 0xffff, 0xfe00 },
  { 0x23, 0xffff, 0xab62 },

  { 0x41, 0xffff, 0xa80c },
  { 0x49, 0xffff, 0x520c },
  { 0x44, 0xffff, 0xd000 },
  { 0x4d, 0xffff, 0xf702 },
  { 0x4a, 0xffff, 0x8653 },
  { 0x46, 0xffff, 0x001e },
  { 0x48, 0xffff, 0x3595 },
  { 0x60, 0xffff, 0x9455 },
  { 0x61, 0xffff, 0x99ff },
  { 0x42, 0xffff, 0x6046 },
  { 0x69, 0xffff, 0xfe00 },
  { 0x63, 0xffff, 0xab62 },
 };

 rtl_set_def_aspm_entry_latency(tp);


 rtl_hw_aspm_clkreq_enable(tp, 0);
 rtl_ephy_init(tp, e_info_8125_1);

 rtl_hw_start_8125_common(tp);
}
