
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {int dummy; } ;


 unsigned int B53_MIBS_58XX_SIZE ;
 unsigned int B53_MIBS_63XX_SIZE ;
 unsigned int B53_MIBS_65_SIZE ;
 unsigned int B53_MIBS_SIZE ;
 scalar_t__ is5365 (struct b53_device*) ;
 scalar_t__ is58xx (struct b53_device*) ;
 scalar_t__ is63xx (struct b53_device*) ;

__attribute__((used)) static unsigned int b53_get_mib_size(struct b53_device *dev)
{
 if (is5365(dev))
  return B53_MIBS_65_SIZE;
 else if (is63xx(dev))
  return B53_MIBS_63XX_SIZE;
 else if (is58xx(dev))
  return B53_MIBS_58XX_SIZE;
 else
  return B53_MIBS_SIZE;
}
