
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_EXGMAC ;
 int _rtl_eri_read (struct rtl8169_private*,int,int ) ;

__attribute__((used)) static u32 rtl_eri_read(struct rtl8169_private *tp, int addr)
{
 return _rtl_eri_read(tp, addr, ERIAR_EXGMAC);
}
