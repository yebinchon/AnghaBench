
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct board_info {int addr_lock; int in_timeout; int lock; int io_addr; } ;


 int DM9000_EPAR ;
 int DM9000_EPCR ;
 int DM9000_EPDRH ;
 int DM9000_EPDRL ;
 int DM9000_PHY ;
 int EPCR_EPOS ;
 int EPCR_ERPRW ;
 int dm9000_dbg (struct board_info*,int,char*,int,int) ;
 int dm9000_msleep (struct board_info*,int) ;
 int iow (struct board_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct board_info* netdev_priv (struct net_device*) ;
 unsigned long readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (unsigned long,int ) ;

__attribute__((used)) static void
dm9000_phy_write(struct net_device *dev,
   int phyaddr_unused, int reg, int value)
{
 struct board_info *db = netdev_priv(dev);
 unsigned long flags;
 unsigned long reg_save;

 dm9000_dbg(db, 5, "phy_write[%02x] = %04x\n", reg, value);
 if (!db->in_timeout)
  mutex_lock(&db->addr_lock);

 spin_lock_irqsave(&db->lock, flags);


 reg_save = readb(db->io_addr);


 iow(db, DM9000_EPAR, DM9000_PHY | reg);


 iow(db, DM9000_EPDRL, value);
 iow(db, DM9000_EPDRH, value >> 8);


 iow(db, DM9000_EPCR, EPCR_EPOS | EPCR_ERPRW);

 writeb(reg_save, db->io_addr);
 spin_unlock_irqrestore(&db->lock, flags);

 dm9000_msleep(db, 1);

 spin_lock_irqsave(&db->lock, flags);
 reg_save = readb(db->io_addr);

 iow(db, DM9000_EPCR, 0x0);


 writeb(reg_save, db->io_addr);

 spin_unlock_irqrestore(&db->lock, flags);
 if (!db->in_timeout)
  mutex_unlock(&db->addr_lock);
}
