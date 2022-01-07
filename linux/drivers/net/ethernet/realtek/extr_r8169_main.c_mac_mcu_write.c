
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int ocp_base; } ;


 int r8168_mac_ocp_write (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void mac_mcu_write(struct rtl8169_private *tp, int reg, int value)
{
 if (reg == 0x1f) {
  tp->ocp_base = value << 4;
  return;
 }

 r8168_mac_ocp_write(tp, tp->ocp_base + reg, value);
}
