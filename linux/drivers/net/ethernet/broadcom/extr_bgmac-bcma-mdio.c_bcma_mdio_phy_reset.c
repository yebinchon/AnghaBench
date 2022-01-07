
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mii_bus {struct bgmac* priv; } ;
struct bgmac {scalar_t__ phyaddr; int dev; } ;


 scalar_t__ BGMAC_PHY_NOREGS ;
 int BMCR_RESET ;
 int MII_BMCR ;
 int bcma_mdio_phy_init (struct bgmac*) ;
 int bcma_mdio_phy_read (struct bgmac*,scalar_t__,int ) ;
 int bcma_mdio_phy_write (struct bgmac*,scalar_t__,int ,int) ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int bcma_mdio_phy_reset(struct mii_bus *bus)
{
 struct bgmac *bgmac = bus->priv;
 u8 phyaddr = bgmac->phyaddr;

 if (phyaddr == BGMAC_PHY_NOREGS)
  return 0;

 bcma_mdio_phy_write(bgmac, phyaddr, MII_BMCR, BMCR_RESET);
 udelay(100);
 if (bcma_mdio_phy_read(bgmac, phyaddr, MII_BMCR) & BMCR_RESET)
  dev_err(bgmac->dev, "PHY reset failed\n");
 bcma_mdio_phy_init(bgmac);

 return 0;
}
