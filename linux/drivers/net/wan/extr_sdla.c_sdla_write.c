
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __sdla_write (struct net_device*,int,void const*,short) ;
 int sdla_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdla_write(struct net_device *dev, int addr,
         const void *buf, short len)
{
 unsigned long flags;

 spin_lock_irqsave(&sdla_lock, flags);
 __sdla_write(dev, addr, buf, len);
 spin_unlock_irqrestore(&sdla_lock, flags);
}
