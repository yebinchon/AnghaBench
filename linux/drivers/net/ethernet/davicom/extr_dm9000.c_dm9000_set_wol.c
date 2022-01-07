
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct board_info {int wake_state; int irq_wake; int addr_lock; int lock; int wake_supported; } ;


 int DM9000_WCR ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int WAKE_MAGIC ;
 int WCR_MAGICEN ;
 int iow (struct board_info*,int ,int) ;
 int irq_set_irq_wake (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_wol(struct net_device *dev, struct ethtool_wolinfo *w)
{
 struct board_info *dm = to_dm9000_board(dev);
 unsigned long flags;
 u32 opts = w->wolopts;
 u32 wcr = 0;

 if (!dm->wake_supported)
  return -EOPNOTSUPP;

 if (opts & ~WAKE_MAGIC)
  return -EINVAL;

 if (opts & WAKE_MAGIC)
  wcr |= WCR_MAGICEN;

 mutex_lock(&dm->addr_lock);

 spin_lock_irqsave(&dm->lock, flags);
 iow(dm, DM9000_WCR, wcr);
 spin_unlock_irqrestore(&dm->lock, flags);

 mutex_unlock(&dm->addr_lock);

 if (dm->wake_state != opts) {


  if (!dm->wake_state)
   irq_set_irq_wake(dm->irq_wake, 1);
  else if (dm->wake_state && !opts)
   irq_set_irq_wake(dm->irq_wake, 0);
 }

 dm->wake_state = opts;
 return 0;
}
