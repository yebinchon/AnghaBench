
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct board_info {int lock; } ;


 int dm9000_hash_table_unlocked (struct net_device*) ;
 struct board_info* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
dm9000_hash_table(struct net_device *dev)
{
 struct board_info *db = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&db->lock, flags);
 dm9000_hash_table_unlocked(dev);
 spin_unlock_irqrestore(&db->lock, flags);
}
