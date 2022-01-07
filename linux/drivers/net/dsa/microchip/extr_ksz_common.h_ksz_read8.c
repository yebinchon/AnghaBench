
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u32 ;
struct ksz_device {int * regmap; } ;


 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static inline int ksz_read8(struct ksz_device *dev, u32 reg, u8 *val)
{
 unsigned int value;
 int ret = regmap_read(dev->regmap[0], reg, &value);

 *val = value;
 return ret;
}
