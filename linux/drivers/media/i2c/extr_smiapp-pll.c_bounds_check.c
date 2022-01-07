
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*,char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int bounds_check(struct device *dev, uint32_t val,
   uint32_t min, uint32_t max, char *str)
{
 if (val >= min && val <= max)
  return 0;

 dev_dbg(dev, "%s out of bounds: %d (%d--%d)\n", str, val, min, max);

 return -EINVAL;
}
