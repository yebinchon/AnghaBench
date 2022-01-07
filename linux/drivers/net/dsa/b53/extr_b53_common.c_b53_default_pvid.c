
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b53_device {int dummy; } ;


 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

__attribute__((used)) static u16 b53_default_pvid(struct b53_device *dev)
{
 if (is5325(dev) || is5365(dev))
  return 1;
 else
  return 0;
}
