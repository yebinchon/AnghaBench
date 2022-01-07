
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int lock; } ;


 int cas_unlock_tx (struct cas*) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void cas_unlock_all(struct cas *cp)
{
 cas_unlock_tx(cp);
 spin_unlock_irq(&cp->lock);
}
