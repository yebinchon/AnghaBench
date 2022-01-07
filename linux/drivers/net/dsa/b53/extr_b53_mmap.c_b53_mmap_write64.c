
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct b53_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int b53_mmap_write32 (struct b53_device*,int,int,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int b53_mmap_write64(struct b53_device *dev, u8 page, u8 reg,
       u64 value)
{
 u32 hi, lo;

 hi = upper_32_bits(value);
 lo = lower_32_bits(value);

 if (WARN_ON(reg % 4))
  return -EINVAL;

 b53_mmap_write32(dev, page, reg, lo);
 b53_mmap_write32(dev, page, reg + 4, hi);

 return 0;
}
