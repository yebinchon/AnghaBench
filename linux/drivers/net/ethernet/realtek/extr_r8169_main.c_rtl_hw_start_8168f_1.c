
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int ERIAR_MASK_0011 ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_hw_start_8168f (struct rtl8169_private*) ;
 int rtl_w0w1_eri (struct rtl8169_private*,int,int ,int,int) ;

__attribute__((used)) static void rtl_hw_start_8168f_1(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168f_1[] = {
  { 0x06, 0x00c0, 0x0020 },
  { 0x08, 0x0001, 0x0002 },
  { 0x09, 0x0000, 0x0080 },
  { 0x19, 0x0000, 0x0224 },
  { 0x00, 0x0000, 0x0004 },
  { 0x0c, 0x3df0, 0x0200 },
 };

 rtl_hw_start_8168f(tp);

 rtl_ephy_init(tp, e_info_8168f_1);

 rtl_w0w1_eri(tp, 0x0d4, ERIAR_MASK_0011, 0x0c00, 0xff00);
}
