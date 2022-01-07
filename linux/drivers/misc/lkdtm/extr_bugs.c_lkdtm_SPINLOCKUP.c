
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __release (int *) ;
 int lock_me_up ;
 int spin_lock (int *) ;

void lkdtm_SPINLOCKUP(void)
{

 spin_lock(&lock_me_up);

 __release(&lock_me_up);
}
