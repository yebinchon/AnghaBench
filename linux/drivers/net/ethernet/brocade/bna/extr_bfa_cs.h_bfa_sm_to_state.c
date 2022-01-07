
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sm_table {scalar_t__ sm; int state; } ;
typedef scalar_t__ bfa_sm_t ;



__attribute__((used)) static inline int
bfa_sm_to_state(const struct bfa_sm_table *smt, bfa_sm_t sm)
{
 int i = 0;

 while (smt[i].sm && smt[i].sm != sm)
  i++;
 return smt[i].state;
}
