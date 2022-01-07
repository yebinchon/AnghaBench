
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct map_info {scalar_t__ map_priv_1; scalar_t__ virt; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 scalar_t__ LTQ_NOR_PROBING ;
 int ebu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ltq_write16(struct map_info *map, map_word d, unsigned long adr)
{
 unsigned long flags;

 if (map->map_priv_1 == LTQ_NOR_PROBING)
  adr ^= 2;
 spin_lock_irqsave(&ebu_lock, flags);
 *(u16 *)(map->virt + adr) = d.x[0];
 spin_unlock_irqrestore(&ebu_lock, flags);
}
