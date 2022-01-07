
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* stmpe_autosleep_delay ;

__attribute__((used)) static int stmpe_round_timeout(int timeout)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(stmpe_autosleep_delay); i++) {
  if (stmpe_autosleep_delay[i] >= timeout)
   return i;
 }





 return -EINVAL;
}
