
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int param_set_int (char const*,struct kernel_param const*) ;

__attribute__((used)) static int param_set_axis(const char *val, const struct kernel_param *kp)
{
 int ret = param_set_int(val, kp);
 if (!ret) {
  int val = *(int *)kp->arg;
  if (val < 0)
   val = -val;
  if (!val || val > 3)
   return -EINVAL;
 }
 return ret;
}
