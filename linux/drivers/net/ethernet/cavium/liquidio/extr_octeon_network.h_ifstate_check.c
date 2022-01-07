
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio {int ifstate; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int ifstate_check(struct lio *lio, int state_flag)
{
 return atomic_read(&lio->ifstate) & state_flag;
}
