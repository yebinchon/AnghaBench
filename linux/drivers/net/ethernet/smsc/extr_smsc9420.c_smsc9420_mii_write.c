
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct smsc9420_pdata {int phy_lock; int dev; } ;
struct mii_bus {scalar_t__ priv; } ;


 int EIO ;
 int MII_ACCESS ;
 int MII_ACCESS_MII_BUSY_ ;
 int MII_ACCESS_MII_WRITE_ ;
 int MII_DATA ;
 int drv ;
 int netif_warn (struct smsc9420_pdata*,int ,int ,char*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int smsc9420_mii_write(struct mii_bus *bus, int phyaddr, int regidx,
      u16 val)
{
 struct smsc9420_pdata *pd = (struct smsc9420_pdata *)bus->priv;
 unsigned long flags;
 u32 addr;
 int i, reg = -EIO;

 spin_lock_irqsave(&pd->phy_lock, flags);


 if ((smsc9420_reg_read(pd, MII_ACCESS) & MII_ACCESS_MII_BUSY_)) {
  netif_warn(pd, drv, pd->dev, "MII is busy???\n");
  goto out;
 }


 smsc9420_reg_write(pd, MII_DATA, (u32)val);


 addr = ((phyaddr & 0x1F) << 11) | ((regidx & 0x1F) << 6) |
  MII_ACCESS_MII_WRITE_;
 smsc9420_reg_write(pd, MII_ACCESS, addr);


 for (i = 0; i < 5; i++) {
  if (!(smsc9420_reg_read(pd, MII_ACCESS) &
   MII_ACCESS_MII_BUSY_)) {
   reg = 0;
   goto out;
  }
  udelay(10);
 }

 netif_warn(pd, drv, pd->dev, "MII busy timeout!\n");

out:
 spin_unlock_irqrestore(&pd->phy_lock, flags);
 return reg;
}
