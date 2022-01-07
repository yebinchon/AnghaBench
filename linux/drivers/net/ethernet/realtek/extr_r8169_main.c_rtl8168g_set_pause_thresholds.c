
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_MASK_0001 ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int ) ;

__attribute__((used)) static void rtl8168g_set_pause_thresholds(struct rtl8169_private *tp,
       u8 low, u8 high)
{

 rtl_eri_write(tp, 0xcc, ERIAR_MASK_0001, low);
 rtl_eri_write(tp, 0xd0, ERIAR_MASK_0001, high);
}
