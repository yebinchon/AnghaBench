
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int mac_lock; } ;
struct mii_bus {scalar_t__ priv; } ;


 int EIO ;
 int MII_ACC ;
 int MII_ACC_MII_BUSY_ ;
 int MII_DATA ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int hw ;
 int smsc911x_mac_read (struct smsc911x_data*,int ) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int smsc911x_mii_read(struct mii_bus *bus, int phyaddr, int regidx)
{
 struct smsc911x_data *pdata = (struct smsc911x_data *)bus->priv;
 unsigned long flags;
 unsigned int addr;
 int i, reg;

 spin_lock_irqsave(&pdata->mac_lock, flags);


 if (unlikely(smsc911x_mac_read(pdata, MII_ACC) & MII_ACC_MII_BUSY_)) {
  SMSC_WARN(pdata, hw, "MII is busy in smsc911x_mii_read???");
  reg = -EIO;
  goto out;
 }


 addr = ((phyaddr & 0x1F) << 11) | ((regidx & 0x1F) << 6);
 smsc911x_mac_write(pdata, MII_ACC, addr);


 for (i = 0; i < 100; i++)
  if (!(smsc911x_mac_read(pdata, MII_ACC) & MII_ACC_MII_BUSY_)) {
   reg = smsc911x_mac_read(pdata, MII_DATA);
   goto out;
  }

 SMSC_WARN(pdata, hw, "Timed out waiting for MII read to finish");
 reg = -EIO;

out:
 spin_unlock_irqrestore(&pdata->mac_lock, flags);
 return reg;
}
