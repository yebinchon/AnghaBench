
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {struct ag71xx* priv; } ;
struct ag71xx {int ndev; } ;


 int AG71XX_REG_MII_ADDR ;
 int AG71XX_REG_MII_CTRL ;
 int MII_ADDR_SHIFT ;
 int ag71xx_mdio_wait_busy (struct ag71xx*) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int link ;
 int netif_dbg (struct ag71xx*,int ,int ,char*,int,int,int) ;

__attribute__((used)) static int ag71xx_mdio_mii_write(struct mii_bus *bus, int addr, int reg,
     u16 val)
{
 struct ag71xx *ag = bus->priv;

 netif_dbg(ag, link, ag->ndev, "mii_write: addr=%04x, reg=%04x, value=%04x\n",
    addr, reg, val);

 ag71xx_wr(ag, AG71XX_REG_MII_ADDR,
    ((addr & 0x1f) << MII_ADDR_SHIFT) | (reg & 0xff));
 ag71xx_wr(ag, AG71XX_REG_MII_CTRL, val);

 return ag71xx_mdio_wait_busy(ag);
}
