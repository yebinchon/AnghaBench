
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ksz_device {int * regmap; } ;


 int regmap_bulk_read (int ,scalar_t__,scalar_t__*,int) ;
 scalar_t__ swab32 (scalar_t__) ;
 int swab64 (int ) ;

__attribute__((used)) static inline int ksz_read64(struct ksz_device *dev, u32 reg, u64 *val)
{
 u32 value[2];
 int ret;

 ret = regmap_bulk_read(dev->regmap[2], reg, value, 2);
 if (!ret) {

  value[0] = swab32(value[0]);
  value[1] = swab32(value[1]);
  *val = swab64((u64)*value);
 }

 return ret;
}
