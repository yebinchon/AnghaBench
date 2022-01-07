
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mac_version; } ;


 int BUG () ;






 int rtl8168dp_driver_start (struct rtl8169_private*) ;
 int rtl8168ep_driver_start (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8168_driver_start(struct rtl8169_private *tp)
{
 switch (tp->mac_version) {
 case 133:
 case 132:
 case 131:
  rtl8168dp_driver_start(tp);
  break;
 case 130:
 case 129:
 case 128:
  rtl8168ep_driver_start(tp);
  break;
 default:
  BUG();
  break;
 }
}
