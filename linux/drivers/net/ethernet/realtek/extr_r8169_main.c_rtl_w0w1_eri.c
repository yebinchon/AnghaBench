
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int rtl_eri_read (struct rtl8169_private*,int) ;
 int rtl_eri_write (struct rtl8169_private*,int,int,int) ;

__attribute__((used)) static void rtl_w0w1_eri(struct rtl8169_private *tp, int addr, u32 mask, u32 p,
    u32 m)
{
 u32 val;

 val = rtl_eri_read(tp, addr);
 rtl_eri_write(tp, addr, mask, (val & ~m) | p);
}
