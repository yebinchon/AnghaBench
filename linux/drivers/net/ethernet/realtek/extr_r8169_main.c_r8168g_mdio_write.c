
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int ocp_base; } ;


 int OCP_STD_PHY_BASE ;
 int r8168_phy_ocp_write (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void r8168g_mdio_write(struct rtl8169_private *tp, int reg, int value)
{
 if (reg == 0x1f) {
  tp->ocp_base = value ? value << 4 : OCP_STD_PHY_BASE;
  return;
 }

 if (tp->ocp_base != OCP_STD_PHY_BASE)
  reg -= 0x10;

 r8168_phy_ocp_write(tp, tp->ocp_base + reg * 2, value);
}
