
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;


 int PRIO_8021D_BE ;
 int PRIO_8021D_NONE ;

__attribute__((used)) static uint prio2prec(u32 prio)
{
 return (prio == PRIO_8021D_NONE || prio == PRIO_8021D_BE) ?
        (prio^2) : prio;
}
