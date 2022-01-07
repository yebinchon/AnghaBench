
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct temac_local {int indirect_lock; int dev; } ;
struct mii_bus {struct temac_local* priv; } ;


 int XTE_MGTDR_OFFSET ;
 int XTE_MIIMAI_OFFSET ;
 int dev_dbg (int ,char*,int,int,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int temac_indirect_out32_locked (struct temac_local*,int ,int) ;

__attribute__((used)) static int temac_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
 struct temac_local *lp = bus->priv;
 unsigned long flags;

 dev_dbg(lp->dev, "temac_mdio_write(phy_id=%i, reg=%x, val=%x)\n",
  phy_id, reg, val);




 spin_lock_irqsave(lp->indirect_lock, flags);
 temac_indirect_out32_locked(lp, XTE_MGTDR_OFFSET, val);
 temac_indirect_out32_locked(lp, XTE_MIIMAI_OFFSET, (phy_id << 5) | reg);
 spin_unlock_irqrestore(lp->indirect_lock, flags);

 return 0;
}
