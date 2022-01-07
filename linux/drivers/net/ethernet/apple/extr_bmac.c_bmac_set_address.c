
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char* dev_addr; } ;
struct bmac_data {int lock; } ;


 int MADD0 ;
 int MADD1 ;
 int MADD2 ;
 int XXDEBUG (char*) ;
 int bmwrite (struct net_device*,int ,unsigned short) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bmac_set_address(struct net_device *dev, void *addr)
{
 struct bmac_data *bp = netdev_priv(dev);
 unsigned char *p = addr;
 unsigned short *pWord16;
 unsigned long flags;
 int i;

 XXDEBUG(("bmac: enter set_address\n"));
 spin_lock_irqsave(&bp->lock, flags);

 for (i = 0; i < 6; ++i) {
  dev->dev_addr[i] = p[i];
 }

 pWord16 = (unsigned short *)dev->dev_addr;
 bmwrite(dev, MADD0, *pWord16++);
 bmwrite(dev, MADD1, *pWord16++);
 bmwrite(dev, MADD2, *pWord16);

 spin_unlock_irqrestore(&bp->lock, flags);
 XXDEBUG(("bmac: exit set_address\n"));
 return 0;
}
