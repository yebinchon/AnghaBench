
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ ocp_base; } ;


 int r8168_mac_ocp_read (struct rtl8169_private*,scalar_t__) ;

__attribute__((used)) static int mac_mcu_read(struct rtl8169_private *tp, int reg)
{
 return r8168_mac_ocp_read(tp, tp->ocp_base + reg);
}
