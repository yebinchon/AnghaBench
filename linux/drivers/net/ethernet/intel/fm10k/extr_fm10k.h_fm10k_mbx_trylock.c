
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int mbx_lock; } ;


 int spin_trylock (int *) ;

__attribute__((used)) static inline int fm10k_mbx_trylock(struct fm10k_intfc *interface)
{
 return spin_trylock(&interface->mbx_lock);
}
