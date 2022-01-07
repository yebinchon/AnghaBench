
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct mii_bus {struct rtl8169_private* priv; } ;


 int ENODEV ;
 int rtl_readphy (struct rtl8169_private*,int) ;

__attribute__((used)) static int r8169_mdio_read_reg(struct mii_bus *mii_bus, int phyaddr, int phyreg)
{
 struct rtl8169_private *tp = mii_bus->priv;

 if (phyaddr > 0)
  return -ENODEV;

 return rtl_readphy(tp, phyreg);
}
