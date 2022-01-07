
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ksz_device {int * regmap; } ;


 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline int ksz_write32(struct ksz_device *dev, u32 reg, u32 value)
{
 return regmap_write(dev->regmap[2], reg, value);
}
