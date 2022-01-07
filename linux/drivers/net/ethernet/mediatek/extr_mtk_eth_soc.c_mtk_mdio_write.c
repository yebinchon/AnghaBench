
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mtk_eth {int dummy; } ;
struct mii_bus {struct mtk_eth* priv; } ;


 int _mtk_mdio_write (struct mtk_eth*,int,int,int ) ;

__attribute__((used)) static int mtk_mdio_write(struct mii_bus *bus, int phy_addr,
     int phy_reg, u16 val)
{
 struct mtk_eth *eth = bus->priv;

 return _mtk_mdio_write(eth, phy_addr, phy_reg, val);
}
