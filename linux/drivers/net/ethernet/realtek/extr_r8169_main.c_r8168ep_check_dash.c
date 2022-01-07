
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int r8168ep_ocp_read (struct rtl8169_private*,int,int) ;

__attribute__((used)) static bool r8168ep_check_dash(struct rtl8169_private *tp)
{
 return !!(r8168ep_ocp_read(tp, 0x0f, 0x128) & 0x00000001);
}
