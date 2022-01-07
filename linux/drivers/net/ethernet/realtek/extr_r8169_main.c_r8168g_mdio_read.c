
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int ocp_base; } ;


 int OCP_STD_PHY_BASE ;
 int r8168_phy_ocp_read (struct rtl8169_private*,int) ;

__attribute__((used)) static int r8168g_mdio_read(struct rtl8169_private *tp, int reg)
{
 if (reg == 0x1f)
  return tp->ocp_base == OCP_STD_PHY_BASE ? 0 : tp->ocp_base >> 4;

 if (tp->ocp_base != OCP_STD_PHY_BASE)
  reg -= 0x10;

 return r8168_phy_ocp_read(tp, tp->ocp_base + reg * 2);
}
