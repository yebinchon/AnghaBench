
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ksz_device {int * regmap; } ;


 int regmap_bulk_write (int ,int ,int *,int) ;
 int swab32 (int) ;
 int swab64 (int) ;

__attribute__((used)) static inline int ksz_write64(struct ksz_device *dev, u32 reg, u64 value)
{
 u32 val[2];


 value = swab64(value);
 val[0] = swab32(value & 0xffffffffULL);
 val[1] = swab32(value >> 32ULL);

 return regmap_bulk_write(dev->regmap[2], reg, val, 2);
}
