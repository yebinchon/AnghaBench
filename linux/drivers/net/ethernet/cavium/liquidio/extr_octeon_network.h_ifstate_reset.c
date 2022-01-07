
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio {int ifstate; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static inline void ifstate_reset(struct lio *lio, int state_flag)
{
 atomic_set(&lio->ifstate, (atomic_read(&lio->ifstate) & ~(state_flag)));
}
