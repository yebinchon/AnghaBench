
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct fintek_dev* priv; } ;
struct fintek_dev {int fintek_lock; } ;


 int fintek_enable_cir (struct fintek_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fintek_open(struct rc_dev *dev)
{
 struct fintek_dev *fintek = dev->priv;
 unsigned long flags;

 spin_lock_irqsave(&fintek->fintek_lock, flags);
 fintek_enable_cir(fintek);
 spin_unlock_irqrestore(&fintek->fintek_lock, flags);

 return 0;
}
