
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_EXGMAC ;
 int _rtl_eri_write (struct rtl8169_private*,int,int ,int ,int ) ;

__attribute__((used)) static void rtl_eri_write(struct rtl8169_private *tp, int addr, u32 mask,
     u32 val)
{
 _rtl_eri_write(tp, addr, mask, val, ERIAR_EXGMAC);
}
