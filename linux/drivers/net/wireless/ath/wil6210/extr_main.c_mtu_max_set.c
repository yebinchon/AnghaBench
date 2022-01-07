
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int WIL_MAX_ETH_MTU ;
 int mtu_max ;
 int param_set_uint (char const*,struct kernel_param const*) ;

__attribute__((used)) static int mtu_max_set(const char *val, const struct kernel_param *kp)
{
 int ret;




 ret = param_set_uint(val, kp);
 if (ret)
  return ret;

 if (mtu_max < 68 || mtu_max > WIL_MAX_ETH_MTU)
  ret = -EINVAL;

 return ret;
}
