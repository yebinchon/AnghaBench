
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int lock; } ;


 unsigned int ior (struct board_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
dm9000_read_locked(struct board_info *db, int reg)
{
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&db->lock, flags);
 ret = ior(db, reg);
 spin_unlock_irqrestore(&db->lock, flags);

 return ret;
}
