
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_cond {int dummy; } ;
struct rtl8169_private {int dummy; } ;


 int rtl_loop_wait (struct rtl8169_private*,struct rtl_cond const*,int ,unsigned int,int,int) ;
 int rtl_udelay ;

__attribute__((used)) static bool rtl_udelay_loop_wait_low(struct rtl8169_private *tp,
         const struct rtl_cond *c,
         unsigned int d, int n)
{
 return rtl_loop_wait(tp, c, rtl_udelay, d, n, 0);
}
