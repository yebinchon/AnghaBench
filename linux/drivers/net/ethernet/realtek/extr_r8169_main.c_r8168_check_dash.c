
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mac_version; } ;
 int r8168dp_check_dash (struct rtl8169_private*) ;
 int r8168ep_check_dash (struct rtl8169_private*) ;

__attribute__((used)) static bool r8168_check_dash(struct rtl8169_private *tp)
{
 switch (tp->mac_version) {
 case 133:
 case 132:
 case 131:
  return r8168dp_check_dash(tp);
 case 130:
 case 129:
 case 128:
  return r8168ep_check_dash(tp);
 default:
  return 0;
 }
}
