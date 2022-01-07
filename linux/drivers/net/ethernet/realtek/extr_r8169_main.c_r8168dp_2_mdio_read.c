
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int MII_PHYSID2 ;
 int r8168dp_2_mdio_start (struct rtl8169_private*) ;
 int r8168dp_2_mdio_stop (struct rtl8169_private*) ;
 int r8169_mdio_read (struct rtl8169_private*,int) ;

__attribute__((used)) static int r8168dp_2_mdio_read(struct rtl8169_private *tp, int reg)
{
 int value;


 if (reg == MII_PHYSID2)
  return 0xc912;

 r8168dp_2_mdio_start(tp);

 value = r8169_mdio_read(tp, reg);

 r8168dp_2_mdio_stop(tp);

 return value;
}
