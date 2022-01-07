
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int regmap_read (struct regmap*,int ,int *) ;

__attribute__((used)) static inline int dsaf_read_syscon(struct regmap *base, u32 reg, u32 *val)
{
 return regmap_read(base, reg, val);
}
