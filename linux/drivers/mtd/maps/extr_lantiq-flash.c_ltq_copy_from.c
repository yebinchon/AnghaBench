
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ virt; } ;
typedef int ssize_t ;


 int ebu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ltq_copy_from(struct map_info *map, void *to,
 unsigned long from, ssize_t len)
{
 unsigned char *f = (unsigned char *)map->virt + from;
 unsigned char *t = (unsigned char *)to;
 unsigned long flags;

 spin_lock_irqsave(&ebu_lock, flags);
 while (len--)
  *t++ = *f++;
 spin_unlock_irqrestore(&ebu_lock, flags);
}
