
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {int dummy; } ;
struct mii_bus {struct rtl8169_private* priv; } ;


 int ENODEV ;
 int rtl_writephy (struct rtl8169_private*,int,int ) ;

__attribute__((used)) static int r8169_mdio_write_reg(struct mii_bus *mii_bus, int phyaddr,
    int phyreg, u16 val)
{
 struct rtl8169_private *tp = mii_bus->priv;

 if (phyaddr > 0)
  return -ENODEV;

 rtl_writephy(tp, phyreg, val);

 return 0;
}
