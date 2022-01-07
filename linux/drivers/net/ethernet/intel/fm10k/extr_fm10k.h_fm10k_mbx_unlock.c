
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int mbx_lock; } ;


 int spin_unlock (int *) ;

__attribute__((used)) static inline void fm10k_mbx_unlock(struct fm10k_intfc *interface)
{
 spin_unlock(&interface->mbx_lock);
}
