
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int phydev; } ;


 int BIT (int) ;
 int phy_modify_paged (int ,int,int,int ,int ) ;

__attribute__((used)) static void rtl8168g_disable_aldps(struct rtl8169_private *tp)
{
 phy_modify_paged(tp->phydev, 0x0a43, 0x10, BIT(2), 0);
}
