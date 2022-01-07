
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int atomic_t ;


 unsigned long atomic_cmpxchg (int *,unsigned long,unsigned long) ;
 unsigned long atomic_read (int *) ;

__attribute__((used)) static inline void aq_utils_obj_clear(atomic_t *flags, u32 mask)
{
 unsigned long flags_old, flags_new;

 do {
  flags_old = atomic_read(flags);
  flags_new = flags_old & ~(mask);
 } while (atomic_cmpxchg(flags, flags_old, flags_new) != flags_old);
}
