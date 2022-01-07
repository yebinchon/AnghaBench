
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 scalar_t__ WIL_RING_SIZE_ORDER_MAX ;
 scalar_t__ WIL_RING_SIZE_ORDER_MIN ;
 int kstrtouint (char const*,int ,scalar_t__*) ;

__attribute__((used)) static int ring_order_set(const char *val, const struct kernel_param *kp)
{
 int ret;
 uint x;

 ret = kstrtouint(val, 0, &x);
 if (ret)
  return ret;

 if ((x < WIL_RING_SIZE_ORDER_MIN) || (x > WIL_RING_SIZE_ORDER_MAX))
  return -EINVAL;

 *((uint *)kp->arg) = x;

 return 0;
}
