
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {struct ag71xx* priv; } ;
struct ag71xx {int ndev; } ;


 int AG71XX_REG_MII_ADDR ;
 int AG71XX_REG_MII_CMD ;
 int AG71XX_REG_MII_STATUS ;
 int MII_ADDR_SHIFT ;
 int MII_CMD_READ ;
 int ag71xx_mdio_wait_busy (struct ag71xx*) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int link ;
 int netif_dbg (struct ag71xx*,int ,int ,char*,int,int,int) ;

__attribute__((used)) static int ag71xx_mdio_mii_read(struct mii_bus *bus, int addr, int reg)
{
 struct ag71xx *ag = bus->priv;
 int err, val;

 err = ag71xx_mdio_wait_busy(ag);
 if (err)
  return err;

 ag71xx_wr(ag, AG71XX_REG_MII_ADDR,
    ((addr & 0x1f) << MII_ADDR_SHIFT) | (reg & 0xff));

 ag71xx_wr(ag, AG71XX_REG_MII_CMD, MII_CMD_READ);

 err = ag71xx_mdio_wait_busy(ag);
 if (err)
  return err;

 val = ag71xx_rr(ag, AG71XX_REG_MII_STATUS);

 ag71xx_wr(ag, AG71XX_REG_MII_CMD, 0);

 netif_dbg(ag, link, ag->ndev, "mii_read: addr=%04x, reg=%04x, value=%04x\n",
    addr, reg, val);

 return val;
}
