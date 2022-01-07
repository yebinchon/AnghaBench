
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int BIT (int ) ;
 int ERIAR_MASK_0001 ;
 int rtl_eri_clear_bits (struct rtl8169_private*,int,int ,int ) ;
 int rtl_eri_set_bits (struct rtl8169_private*,int,int ,int ) ;

__attribute__((used)) static void rtl_reset_packet_filter(struct rtl8169_private *tp)
{
 rtl_eri_clear_bits(tp, 0xdc, ERIAR_MASK_0001, BIT(0));
 rtl_eri_set_bits(tp, 0xdc, ERIAR_MASK_0001, BIT(0));
}
