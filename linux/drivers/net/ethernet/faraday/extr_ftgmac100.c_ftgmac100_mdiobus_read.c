
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct ftgmac100 {scalar_t__ base; } ;


 int EIO ;
 scalar_t__ FTGMAC100_OFFSET_PHYCR ;
 scalar_t__ FTGMAC100_OFFSET_PHYDATA ;
 unsigned int FTGMAC100_PHYCR_MDC_CYCTHR_MASK ;
 unsigned int FTGMAC100_PHYCR_MIIRD ;
 unsigned int FTGMAC100_PHYCR_PHYAD (int) ;
 unsigned int FTGMAC100_PHYCR_REGAD (int) ;
 int FTGMAC100_PHYDATA_MIIRDATA (int) ;
 void* ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static int ftgmac100_mdiobus_read(struct mii_bus *bus, int phy_addr, int regnum)
{
 struct net_device *netdev = bus->priv;
 struct ftgmac100 *priv = netdev_priv(netdev);
 unsigned int phycr;
 int i;

 phycr = ioread32(priv->base + FTGMAC100_OFFSET_PHYCR);


 phycr &= FTGMAC100_PHYCR_MDC_CYCTHR_MASK;

 phycr |= FTGMAC100_PHYCR_PHYAD(phy_addr) |
   FTGMAC100_PHYCR_REGAD(regnum) |
   FTGMAC100_PHYCR_MIIRD;

 iowrite32(phycr, priv->base + FTGMAC100_OFFSET_PHYCR);

 for (i = 0; i < 10; i++) {
  phycr = ioread32(priv->base + FTGMAC100_OFFSET_PHYCR);

  if ((phycr & FTGMAC100_PHYCR_MIIRD) == 0) {
   int data;

   data = ioread32(priv->base + FTGMAC100_OFFSET_PHYDATA);
   return FTGMAC100_PHYDATA_MIIRDATA(data);
  }

  udelay(100);
 }

 netdev_err(netdev, "mdio read timed out\n");
 return -EIO;
}
