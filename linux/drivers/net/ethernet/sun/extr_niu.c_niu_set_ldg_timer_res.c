
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int EINVAL ;
 int LDG_TIMER_RES ;
 int LDG_TIMER_RES_VAL ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_set_ldg_timer_res(struct niu *np, int res)
{
 if (res < 0 || res > LDG_TIMER_RES_VAL)
  return -EINVAL;


 nw64(LDG_TIMER_RES, res);

 return 0;
}
