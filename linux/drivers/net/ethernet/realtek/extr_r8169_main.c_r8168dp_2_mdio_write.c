
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int r8168dp_2_mdio_start (struct rtl8169_private*) ;
 int r8168dp_2_mdio_stop (struct rtl8169_private*) ;
 int r8169_mdio_write (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void r8168dp_2_mdio_write(struct rtl8169_private *tp, int reg, int value)
{
 r8168dp_2_mdio_start(tp);

 r8169_mdio_write(tp, reg, value);

 r8168dp_2_mdio_stop(tp);
}
