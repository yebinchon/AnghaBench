
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_mib_desc {int dummy; } ;
struct b53_device {int dummy; } ;


 struct b53_mib_desc const* b53_mibs ;
 struct b53_mib_desc const* b53_mibs_58xx ;
 struct b53_mib_desc const* b53_mibs_63xx ;
 struct b53_mib_desc const* b53_mibs_65 ;
 scalar_t__ is5365 (struct b53_device*) ;
 scalar_t__ is58xx (struct b53_device*) ;
 scalar_t__ is63xx (struct b53_device*) ;

__attribute__((used)) static const struct b53_mib_desc *b53_get_mib(struct b53_device *dev)
{
 if (is5365(dev))
  return b53_mibs_65;
 else if (is63xx(dev))
  return b53_mibs_63xx;
 else if (is58xx(dev))
  return b53_mibs_58xx;
 else
  return b53_mibs;
}
