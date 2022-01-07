
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;


 int SDLA_ADDR_MASK ;
 int SDLA_WINDOW (struct net_device*,int) ;
 int sdla_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static char sdla_byte(struct net_device *dev, int addr)
{
 unsigned long flags;
 char byte, *temp;

 temp = (void *) (dev->mem_start + (addr & SDLA_ADDR_MASK));

 spin_lock_irqsave(&sdla_lock, flags);
 SDLA_WINDOW(dev, addr);
 byte = *temp;
 spin_unlock_irqrestore(&sdla_lock, flags);

 return byte;
}
