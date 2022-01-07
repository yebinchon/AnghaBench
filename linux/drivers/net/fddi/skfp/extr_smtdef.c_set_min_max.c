
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;



__attribute__((used)) static int set_min_max(int maxflag, u_long mib, u_long limit, u_long *oper)
{
 u_long old ;
 old = *oper ;
 if ((limit > mib) ^ maxflag)
  *oper = limit ;
 else
  *oper = mib ;
 return old != *oper;
}
