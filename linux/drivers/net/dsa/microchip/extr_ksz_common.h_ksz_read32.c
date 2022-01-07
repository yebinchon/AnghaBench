
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ksz_device {int * regmap; } ;


 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static inline int ksz_read32(struct ksz_device *dev, u32 reg, u32 *val)
{
 unsigned int value;
 int ret = regmap_read(dev->regmap[2], reg, &value);

 *val = value;
 return ret;
}
