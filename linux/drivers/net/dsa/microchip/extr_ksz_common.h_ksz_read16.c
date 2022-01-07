
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef unsigned int u16 ;
struct ksz_device {int * regmap; } ;


 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static inline int ksz_read16(struct ksz_device *dev, u32 reg, u16 *val)
{
 unsigned int value;
 int ret = regmap_read(dev->regmap[1], reg, &value);

 *val = value;
 return ret;
}
