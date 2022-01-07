
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dummy; } ;
struct mii_bus {struct mtk_eth* priv; } ;


 int _mtk_mdio_read (struct mtk_eth*,int,int) ;

__attribute__((used)) static int mtk_mdio_read(struct mii_bus *bus, int phy_addr, int phy_reg)
{
 struct mtk_eth *eth = bus->priv;

 return _mtk_mdio_read(eth, phy_addr, phy_reg);
}
